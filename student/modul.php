<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

// mengambil data jawaban pre_test dari murid
$pre_test = mysqli_query($conn, "SELECT * FROM pre_test_answer where student_id = '{$_SESSION['student_id']}'");
$pre_test_row = mysqli_num_rows($pre_test);

// mengambil data hasil survey dari murid
$survey = mysqli_query($conn, "SELECT * FROM survey_result where student_id = '{$_SESSION['student_id']}'");
$survey_row = mysqli_num_rows($survey);

// mengecek jika murid sudah mengambil pre test dan survey
if ($pre_test_row > 0 || $survey_row > 0) {
    // mengambil data level murid dari database
    $query = mysqli_query($conn, "SELECT * FROM level_student where student_id = '{$_SESSION['student_id']}'");
    $_SESSION['survey_taken'] = true;
    // jika data ada maka tes sudah di proses
    if (mysqli_num_rows($query) > 0) {
        $result = mysqli_fetch_array($query, MYSQLI_ASSOC);
        $level_user = $result['level'];
        // setting level modul sesuai level user
        if ($level_user == 1) {
            $level_modul = [1, 2, 3];
        } else if ($level_user == 2) {
            $level_modul = [2, 3, 1];
        } else {
            $level_modul = [3, 1, 2];
        }
        $_SESSION['test_processed'] = true;
    } else {
        // pre test belum diproses
        $_SESSION['test_processed'] = false;
    }
} else {
    $_SESSION['survey_taken'] = false;
}

?>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: e-Learn:: Education Dashboard </title>
    <link rel="icon" href="../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="../node_modules/owl.carousel2/dist/assets/owl.carousel.min.css" />
    <!-- project css file  -->
    <link rel="stylesheet" href="../assets/css/e-learn.style.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="../assets/css/style.css?v=<?php echo date("yymmdd") ?>" rel="stylesheet" />
</head>

<body>
    <div id="elearn-layout" class="theme-purple" style="width:100%;">
        <!-- sidebar -->
        <?php include('../layout/sidebar.php'); ?>

        <!-- main body area -->
        <div class="main px-lg-4 px-md-4">

            <!-- Body: Header -->
            <?php include('../layout/header.php'); ?>

            <!-- Body: Body -->
            <div class="body d-flex py-lg-2 py-md-2">
                <div class="container">
                    <h2>Rekomendasi Modul</h2>
                    <div class="row clearfix g-3 mt-3">
                        <div class="col-lg-12 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body p-5">

                                            <?php
                                            // menampilkan error jika gagal post test
                                            if (isset($_SESSION['gagal_post_test'])) { ?>
                                                <div class="alert alert-danger" role="alert">
                                                    ANDA GAGAL LULUS POST TEST. SILAHKAN ULANGI KEMBALI!!!
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                </div>
                                            <?php }

                                            unset($_SESSION['gagal_post_test']);
                                            
                                            if (isset($_SESSION['turun_level'])) { ?>
                                                <div class="alert alert-danger" role="alert">
                                                    ANDA GAGAL MENGERJAKAN POST TEST SEBANYAK 3x. LEVEL ANDA OTOMATIS TURUN 1 TINGKAT!!!
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                </div>
                                                <?php }

                                            unset($_SESSION['turun_level']);
                                            if ($_SESSION['survey_taken']) {
                                                // jika level modul diset
                                                if (isset($level_modul)) {
                                                    foreach ($level_modul as $l) { ?>
                                                        <div class="row mb-3">
                                                            <h4>Level <?php echo $l ?></h4>
                                                        </div>
                                                        <div class="row">
                                                            <?php
                                                            // mengambil data module dari database jika pre test sudah dihitung
                                                            $sql = "SELECT * FROM module WHERE module_level = '{$l}'";
                                                            $query = mysqli_query($conn, $sql);
                                                            $result = mysqli_fetch_all($query, MYSQLI_ASSOC);
                                                            $last_key = 0;
                                                            $last_learned = 0;
                                                            // perulangan untuk menampilkan modul
                                                            foreach ($result as $key => $r) {
                                                                $disabled = false;
                                                                $module_learned = false;
                                                                // jika level modul sesuai dengan level user
                                                                if ($l == $level_user) {
                                                                    if ($key == array_key_first($result)) {
                                                                        $disabled = false;
                                                                    } else {
                                                                        // mengambil data modul yang sudah selesai dipelajari
                                                                        $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}' order by id DESC limit 1";
                                                                        $query = mysqli_query($conn, $sql);

                                                                        // jika sudah ada yg dipelajari
                                                                        if (mysqli_num_rows($query) > 0) {
                                                                            $modul = mysqli_fetch_array($query, MYSQLI_ASSOC);
                                                                            // cek jika modul adalah yg terakhir
                                                                            if ($modul['module_id'] == $last_key) {
                                                                                $disabled = false;
                                                                            } else {
                                                                                // cek jika modul yang tampil sudah dipelajari
                                                                                $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}' AND module_id = '{$last_key}'";
                                                                                $query = mysqli_query($conn, $sql);
                                                                                if (mysqli_num_rows($query) > 0) {
                                                                                    // jika sudah dipelajari
                                                                                    $disabled = false;
                                                                                } else {
                                                                                    // jika belum dipelajari
                                                                                    $disabled = true;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            $disabled = true;
                                                                        }
                                                                    }
                                                                } else if ($l < $level_user) {
                                                                    // cek jika modul lebih kecil dari level user
                                                                    $disable = false;
                                                                } else {
                                                                    // jika level modul lebih besar dari user
                                                                    if (isset($level_done)) {
                                                                        // cek jika level modul sebelumnya sudah diselesaikan
                                                                        if ($level_done == ($l - 1)) {
                                                                            if ($key == array_key_first($result)) {
                                                                                // jika ini modul pertama maka modul terbuka
                                                                                $disabled = false;
                                                                            } else {
                                                                                // jika bukan modul pertama cek apakah modul sudah dipelajaari
                                                                                $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}' order by id DESC limit 1";
                                                                                $query = mysqli_query($conn, $sql);
                                                                                $modul = mysqli_fetch_array($query, MYSQLI_ASSOC);
                                                                                if ($modul['module_id'] == $last_key) {
                                                                                    $disabled = false;
                                                                                } else {
                                                                                    $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}' AND module_id = '{$last_key}'";
                                                                                    $query = mysqli_query($conn, $sql);
                                                                                    if (mysqli_num_rows($query) > 0) {
                                                                                        $disabled = false;
                                                                                    } else {
                                                                                        $disabled = true;
                                                                                    }
                                                                                }
                                                                            }
                                                                        } else {
                                                                            // jika modul sebelumnya belum terselesaikan maka modul terkunci
                                                                            $disabled = true;
                                                                        }
                                                                    } else {
                                                                        $disabled = true;
                                                                    }
                                                                }

                                                                // cek jika modul sudah dipelajari
                                                                $last_key = $r['id'];
                                                                $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}' AND module_id = '{$r['id']}'";
                                                                $query = mysqli_query($conn, $sql);
                                                                if (mysqli_num_rows($query) > 0) {
                                                                    $module_learned = true;
                                                                }

                                                                if ($key == array_key_last($result) && $module_learned == true) {
                                                                    $level_done = $l;
                                                                }


                                                            ?>

                                                                <div class="col-md-3">
                                                                    <!-- cek jika modul terkunci memunculkan gambar gembok dan background hitam -->
                                                                    <a href="module.php?module=<?php echo $r['id'] ?>" class="text-decoration-none <?php if ($disabled) { ?>disabled-link<?php } ?>">
                                                                        <div class="card modul mb-3 <?php if ($disabled) {
                                                                                                        echo "bg-dark text-white";
                                                                                                    } else if ($module_learned) {
                                                                                                        echo "bg-success text-white";
                                                                                                    } else {
                                                                                                        echo "text-black";
                                                                                                    } ?>">
                                                                            <div class="card-body">
                                                                                <div class="card-title">
                                                                                    <span>Modul
                                                                                        <?php echo $r['number']; ?></span>
                                                                                    <span><?php if ($disabled) { ?><i class="bi bi-lock"></i><?php } else if ($module_learned) { ?>
                                                                                            <i class="bi bi-check-circle"></i>
                                                                                        <?php } ?></span>
                                                                                </div>
                                                                                <div class="card-text fw-bold">
                                                                                    <span><?php echo $r['module_desc'] ?></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </a>
                                                                </div>
                                                            <?php } ?>
                                                        </div>
                                                        <hr />

                                                    <?php } ?>
                                                    <?php
                                                    $sql = "SELECT * FROM module_learned WHERE student_id = '{$_SESSION['student_id']}'";
                                                    $query = mysqli_query($conn, $sql);

                                                    $learned_module = mysqli_num_rows($query);
                                                    ?>
                                                    <a href="quiz.php" type="submit" class="btn btn-info col-md-12 text-white" <?php if ($learned_module != 7) echo "disabled" ?>>
                                                        <h3><strong>QUIZ</strong></h3>
                                                    </a>
                                                <?php } else { ?>
                                                    <h1>Proses penghitungan pre-test belum selesai, silahkan tunggu hasil
                                                        pre-test yang masih
                                                        diproses</h1>
                                                    <a href="index-adaptive-learning.php" class="btn btn-primary">KEMBALI KE HOME</a>
                                                <?php }
                                            } else { ?>
                                                <h1>ANDA BELUM MELAKUKAN PRE-TEST</h1>
                                                <a href="index-adaptive-learning.php" class="btn btn-primary">KEMBALI KE HOME</a>
                                            <?php } ?>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row End -->
                </div>
            </div>

        </div>
    </div>

    <!-- Jquery Core Js -->
    <!-- <script src="../assets/bundles/libscripts.bundle.js"></script> -->

    <!-- Plugin Js-->
    <!-- <script src="../node_modules/owl.carousel2/dist/owl.carousel.min.js"></script>
    <script src="../assets/bundles/apexcharts.bundle.js"></script> -->

    <!-- Jquery Page Js -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="../js/template.js"></script>
    <script src="../js/page/elearn-index.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        var table;
        $(document).ready(function() {
            table = $('#topikTable').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": {
                    "url": "../data/materi.php?action=getModul",
                    "dataType": "json",
                    "type": "POST",
                },
                "columnDefs": [ //Set column definition initialisation properties.
                    {
                        "targets": [0, 2], //first column / numbering column
                        "orderable": false, //set not orderable
                    },
                ],
                "columns": [{
                        data: "no",
                        name: "no"
                    },
                    {
                        data: "module_desc",
                        name: "module_desc"
                    },
                    {
                        data: "action",
                        name: "action"
                    }
                ]
            });
            $('#topikTable').on('click', '#btn-edit', function() {
                $.ajax({
                    url: "../data/materi.php?action=getModulById",
                    method: "post",
                    type: "ajax",
                    data: {
                        id: $(this).attr('data'),
                    },
                    dataType: "json",
                    success: function(data) {
                        $('#modul').val(data['modul']);
                        $('#idmodul').val(data['id']);
                    },
                    error: function(e) {
                        console.log(e);
                    }
                })
                $('#modalEditModul').modal('show');
            })

            $('#formeditModul').submit(function() {
                $.ajax({
                    url: '../data/materi.php?action=editModul',
                    method: "post",
                    type: "ajax",
                    data: {
                        id: $('#idmodul').val(),
                        modul: $('#modul').val()
                    },
                    success: function(data) {
                        Swal.fire(
                            '',
                            'Update Modul Berhasil',
                            'success'
                        );
                        table.ajax.reload();
                        $('#modalEditModul').modal('hide');
                    },
                    error: function(e) {
                        console.log(e);
                    }
                });
                return false;
            })

            $('#topikTable').on('click', '#btn-delete', function() {

                Swal.fire({
                    title: "Konfirmasi Hapus Modul?!",
                    text: "Apakah anda yakin untuk manghapus data Modul ini?",
                    icon: 'warning',
                    showDenyButton: true,
                    confirmButtonText: 'Ya!',
                    denyButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '../data/materi.php?action=hapusTopik',
                            method: 'post',
                            type: 'ajax',
                            data: {
                                id: $(this).attr('data')
                            },
                            success: function(data) {
                                Swal.fire(
                                    '',
                                    'Hapus Topik Berhasil',
                                    'success'
                                );
                                table.ajax.reload();
                                $('#modalEditModul').modal('hide');
                            },
                            error: function(e) {
                                console.log(e);
                            }
                        })
                    } else {
                        Swal.fire(
                            'Cancelled',
                            'Hapus Modul Dibatalkan',
                            'error'
                        );
                    }
                })
            })
        });
    </script>
</body>

</html>