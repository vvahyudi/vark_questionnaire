<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

// mengambil data jawaban pre_test dari murid
// $pre_test = mysqli_query($conn, "SELECT * FROM pre_test_answer where student_id = '{$_SESSION['student_id']}'");
// $pre_test_row = mysqli_num_rows($pre_test);

// mengambil data hasil survey dari murid
$survey = mysqli_query($conn, "SELECT learning_result FROM survey_results where student_id = '{$_SESSION['student_id']}'");
$survey_row = mysqli_num_rows($survey);

// mengecek jika murid sudah mengambil pre test dan survey
if ($survey_row == 1) {
    // set hasil survey level
    $_SESSION['survey_taken'] = true;
    $learningCode = mysqli_fetch_array($survey, MYSQLI_ASSOC);
    $learningCode = intval($learningCode);
    // echo var_dump($surveyData);
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
                                            
                                            ?>

                                                <?php 

                                            
                                            if ($_SESSION['survey_taken']) {
                                                // jika level modul diset
                                                echo var_dump($learningCode);
                                               
                                                    $learningTypes = [
                                                        1 => 'Visual',
                                                        2 => 'Auditory',
                                                        3 => 'Reading',
                                                        4 => 'Kinesthetic',
                                                        12 => 'Visual Auditory',
                                                        13 => 'Visual Reading',
                                                        14 => 'Visual Kinesthetic',
                                                        23 => 'Auditory Reading',
                                                        24 => 'Auditory Kinesthetic',
                                                        34 => 'Reading Kinesthetic',
                                                    ];
                                                    
                                                    $learningType = $learningTypes[$learningCode] ?? 'Unknown';
                                                    
                                                   ?>
                                                     <div class="row mb-3">
                                                            <h4>Gaya <?php echo $learningType ?></h4>
                                                        </div>

                                                    <?php
                                                    if ($learningCode==1){
                                                        $queryVideo = mysqli_query($conn, "SELECT isi_materi FROM materi_visual");
                                                        $video_row = mysqli_fetch_assoc($queryVideo);
                                                       
                                                        // while ($video_row){
                                                        //     $urlYoutube = $video_row['isi_materi'];
                                                        //     $videoId = getYoutubeVideoId($urlYoutube);
                                                        //     $thumbnailUrl = "https://img.youtube.com/vi/$videoId/maxresdefault.jpg";
                                                            
                                                        //     echo '<div class="materi-visual">';
                                                        //     echo "<h4>$judulMateri</h4>";
                                                        //     echo '<img src="' . $thumbnailUrl . '" alt="Thumbnail">';
                                                        //     echo '</div>';
                                                        // }
                                                        function getYoutubeEmbeddedURL($url) {
                                                           return "https://www.youtube.com/embed/" .getYoutubeID($url);
                                                        }
                                                        function getYoutubeID($url){
                                                            $queryString = parse_url($url, PHP_URL_QUERY);
                                                            parse_str($queryString, $params);
                                                            if (isset($params['v'])&& strlen($params['v'])>0){
                                                                return $params['v'];
                                                            }else{
                                                                return'';
                                                            }
                                                        }
                                                        $url = 'https://youtu.be/f4RoLvSi0mw';
                                                        $embed_code = '<iframe width="560" height="315" src="https://www.youtube.com/embed/f4RoLvSi0mw?si=PiJb8Ar2EHWd1IvE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
                                                        echo $embed_code;                                                    }
                                                    ?>
                                                      

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