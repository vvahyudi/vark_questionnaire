<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

// Mengambil id topik dari URL
$id = $_GET['topik'];

// Mengambil data topik dari database
$sql = "SELECT * FROM topic WHERE id = '{$id}'";
$query = mysqli_query($conn, $sql);
$result = mysqli_fetch_array($query, MYSQLI_ASSOC);

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>

<body>

    <div id="elearn-layout" class="theme-purple">
        <!-- sidebar -->
        <?php include('../layout/sidebar.php'); ?>

        <!-- main body area -->
        <div class="main px-lg-4 px-md-4">

            <!-- Body: Header -->
            <?php include('../layout/header.php'); ?>

            <!-- Body: Body -->
            <div class="body d-flex py-lg-2 py-md-2">
                <div class="container-fluid">
                    <h2>Master Sub Topik</h2>
                    <div class="row clearfix g-3 mt-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body p-5">
                                            <div class="d-flex justify-content-between mb-3">
                                                <a href="tambah-sub-topik.php" class="btn btn-primary"
                                                    data-bs-toggle="modal" data-bs-target="#modalTambahSubTopik"><i
                                                        class="icofont-plus"></i>&nbsp;Tambah
                                                    Sub Topik</a>
                                                <a href="topik.php" class="btn btn-info text-white  "><i
                                                        class="icofont-arrow-left"></i>&nbsp;<?php echo $result['topic_desc'] ?></a>
                                            </div>
                                            <div class=" row align-items-center">
                                                <table id="subTopikTable"
                                                    class="table table-bordered table-striped bg-white"
                                                    style="width:100%">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>Sub Topik</th>
                                                            <th>Aksi</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                            </div>
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

    <!-- Modal Tambah Topik -->
    <div class="modal fade" id="modalTambahSubTopik" tabindex="-1" aria-labelledby="modalTambahSubTopikLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form action="../data/materi.php?action=tambahSubTopik" method="POST" id="formTambahSubTopik">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTambahSubTopikLabel">Tambah Sub Topik</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id" id="idTopik" value="" />
                        <div class="mb-3 row">
                            <label for="topik" class="col-sm-2 col-form-label">Sub Topik</label>
                            <input type="hidden" name="topik" value="<?php echo $id ?>">
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="subtopik" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-info text-white">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal Edit Topik-->
    <div class="modal fade" id="modalEditSubTopik" tabindex="-1" aria-labelledby="modalEditSubTopikLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form action="../data/materi.php?action=editSubTopik" method="POST" id="formEditSubTopik">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalEditSubTopikLabel">Edit Sub Topik</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id" id="idSubTopik" value="" />
                        <div class="mb-3 row">
                            <label for="topik" class="col-sm-2 col-form-label">Sub Topik</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="subTopik" name="subTopik" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-info text-white">Simpan</button>
                    </div>
                </form>
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
        table = $('#subTopikTable').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "../data/materi.php?action=getSubTopik",
                "data": {
                    topik: <?php echo $id ?>,
                },
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
                    data: "sub_topic_desc",
                    name: "sub_topic_desc"
                },
                {
                    data: "action",
                    name: "action"
                }
            ]
        });

        $('#formTambahSubTopik').submit(function() {
            $.ajax({
                url: "../data/materi.php?action=tambahSubTopik",
                method: "POST",
                data: $('#formTambahSubTopik').serialize(),
                success: function(data) {
                    Swal.fire(
                        '',
                        'Sukses Tambah Sub Topik',
                        'success'
                    );
                    table.ajax.reload();
                    $('#modalTambahSubTopik').modal('hide');
                },
                error: function(e) {
                    console.log(e)
                }
            })
            return false;
        })

        $('#subTopikTable').on('click', '#btn-edit', function() {
            $.ajax({
                url: "../data/materi.php?action=getSubTopikById",
                method: "post",
                type: "ajax",
                data: {
                    topik: $(this).attr('data'),
                },
                dataType: "json",
                success: function(data) {
                    $('#subTopik').val(data['sub_topik']);
                    $('#idSubTopik').val(data['id']);
                },
                error: function(e) {
                    console.log(e);
                }
            })
            $('#modalEditSubTopik').modal('show');
        })

        $('#formEditSubTopik').submit(function() {
            $.ajax({
                url: '../data/materi.php?action=editSubTopik',
                method: "post",
                type: "ajax",
                data: {
                    id: $('#idSubTopik').val(),
                    subtopik: $('#subTopik').val()
                },
                success: function(data) {
                    Swal.fire(
                        '',
                        'Update Sub Topik Berhasil',
                        'success'
                    );
                    table.ajax.reload();
                    $('#modalEditSubTopik').modal('hide');
                },
                error: function(e) {
                    console.log(e);
                }
            });
            return false;
        })

        $('#subTopikTable').on('click', '#btn-delete', function() {

            Swal.fire({
                title: "Konfirmasi Hapus Sub Topik?!",
                text: "Apakah anda yakin untuk manghapus data sub topik ini?",
                icon: 'warning',
                showDenyButton: true,
                confirmButtonText: 'Ya!',
                denyButtonText: 'Batal'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '../data/materi.php?action=hapusSubTopik',
                        method: 'post',
                        type: 'ajax',
                        data: {
                            id: $(this).attr('data')
                        },
                        success: function(data) {
                            Swal.fire(
                                '',
                                'Hapus Sub Topik Berhasil',
                                'success'
                            );
                            table.ajax.reload();
                            $('#modalEditSubTopik').modal('hide');
                        },
                        error: function(e) {
                            console.log(e);
                        }
                    })
                } else {
                    Swal.fire(
                        'Cancelled',
                        'Hapus Sub Topik Dibatalkan',
                        'error'
                    );
                }
            })
        })
    });
    </script>
</body>

</html>