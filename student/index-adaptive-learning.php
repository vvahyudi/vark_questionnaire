<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}
// mengambil data hasil survey murid
$survey = mysqli_query($conn, "SELECT * FROM survey_results where student_id = '{$_SESSION['student_id']}'");
$survey_row = mysqli_num_rows($survey);
// jika ada hasil survey
if ($survey_row == 1) {
    // set hasil survey level
    $_SESSION['survey_taken'] = true;
    $surveyData = mysqli_fetch_array($survey, MYSQLI_ASSOC);
    
    //nilai terbesar
    $learningCode = $surveyData['learning_result'];
    // $maxValue = max($surveyData['visual'], $surveyData['auditory'], $surveyData['reading'], $surveyData['kinesthetic']);
    $learningType  = '';
// Menentukan gaya pembelajaran berdasarkan nilai terbesar
// if ($maxValue == $surveyData['visual'] && $maxValue == $surveyData['auditory']) {
//     $learningCode = 12;
//     $learningType = 'Visual dan Auditory';
// } elseif ($maxValue == $surveyData['visual'] && $maxValue == $surveyData['reading']) {
//     $learningCode = 13;
//     $learningType = 'Visual dan Reading';
// } elseif ($maxValue == $surveyData['visual'] && $maxValue == $surveyData['kinesthetic']) {
//     $learningCode=14;
//     $learningType = 'Visual dan Kinesthetic';
// } elseif ($maxValue == $surveyData['auditory'] && $maxValue == $surveyData['reading']) {
//     $learningCode =23;
//     $learningType = 'Auditory dan Reading';
// } elseif ($maxValue == $surveyData['auditory'] && $maxValue == $surveyData['kinesthetic']) {
//     $learningCode=24;
//     $learningType = 'Auditory dan Kinesthetic';
// } elseif ($maxValue == $surveyData['reading'] && $maxValue == $surveyData['kinesthetic']) {
//     $learningCode=34;
//     $learningType = 'Reading dan Kinesthetic';
// } elseif ($maxValue == $surveyData['visual']) {
//     $learningCode = 1;
//     $learningType = 'Visual';
// } elseif ($maxValue == $surveyData['auditory']) {
//     $learningCode = 2;
//     $learningType = 'Auditory';
// } elseif ($maxValue == $surveyData['reading']) {
//     $learningCode = 3;
//     $learningType = 'Reading/Writing';
// } elseif ($maxValue == $surveyData['kinesthetic']) {
//     $learningCode = 4;
//     $learningType = 'Kinesthetic';
// }
// if ($learningCode ==1){
//     $learningType = 'Visual';
// }
// elseif ($learningCode ==2){
//     $learningType = 'Auditory';
// }
// elseif ($learningCode ==3){
//     $learningType = 'Reading';
// }
// elseif ($learningCode ==4){
//     $learningType = 'Kinesthetic';
// }
// elseif ($learningCode ==12){
//     $learningType = 'Visual Auditory';
// }
// elseif ($learningCode ==13){
//     $learningType = 'Visual Reading';
// }
// elseif ($learningCode ==14){
//     $learningType = 'Visual Kinesthetic';
// }
// elseif ($learningCode ==23){
//     $learningType = 'Auditory Reading';
// }
// elseif ($learningCode ==24){
//     $learningType = 'Auditory Kinesthetic';
// }
// elseif ($learningCode ==34){
//     $learningType = 'Reading Kinesthetic';
// }

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
    <link href="../assets/css/style.css?v=<?php echo date("yymmdd") ?>" rel="stylesheet" />
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
            <div class="body d-flex py-lg-3 py-md-2">
                <div class="container-xxl">
                    <div class="row clearfix g-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col-12 col-lg-5 order-lg-2">
                                                    <div class="text-center p-4">
                                                        <img src="../assets/images/study.svg" alt="..." class="img-fluid set-md-img">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-7 order-lg-1">
                                                    <h3 class=" mb-3">Welcome back, <span class="fw-bold">
                                                            <?php echo $_SESSION['name']; ?>
                                                        </span>
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php
                            if (isset($_SESSION['quiz_finish']) && $_SESSION['quiz_finish'] == true) { ?>
                                <div class="alert alert-success" role="alert">
                                    BERHASIL MENGERJAKAN QUIZ
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            <?php }

                            $_SESSION['quiz_finish'] = false;
                            ?>
                                <div class="card mb-3 color-bg-200">
                                    <div class="card-header py-3">
                                        <h6 class="mb-0 fw-bold ">Hasil Penilaian Gaya Pembelajaran</h6>
                                    </div>
                                    <div class="card-body">
                                        <?php
                                        // Cek apakah pre test suda di proses
                                        if ($_SESSION['survey_taken']) { ?>
                                            <h6 class="mb-0 fw-bold">Gaya Belajar Anda anda adalah <?php echo $learningType ?></h6>
                                        <?php  } else { ?>
                                           
                                            <!-- cek apakah murid sudah mengambil survey -->
                                            <?php if ($_SESSION['survey_taken']) { ?>
                                                <h6 class="mb-0 fw-bold">
                                                    Anda sudah mengambil Survey, silahkan tunggu hasil survey yang masih
                                                    diproses
                                                </h6>
                                            <?php  } else { ?>
                                                <h6 class="mb-2 fw-bold">Anda belum mengambil Survey Gaya Pembelajaran</h6>
                                                <p>Silahkan ambil survey dengan klik tombol <a href="survey.php" class="btn btn-primary ">Survey</a></p>
                                        <?php }
                                        } ?>

                                    </div>
                                </div>
                            
                            <a href="modul.php" class="btn btn-primary modul"><b>Mulai Belajar</b></a>
                        </div>
                    </div><!-- Row End -->
                </div>
            </div>

        </div>

        <!-- Jquery Core Js -->
        <script src="../assets/bundles/libscripts.bundle.js"></script>

        <!-- Plugin Js-->
        <script src="../node_modules/owl.carousel2/dist/owl.carousel.min.js"></script>
        <script src="../assets/bundles/apexcharts.bundle.js"></script>

        <!-- Jquery Page Js -->
        <script src="../js/template.js"></script>
        <script src="../s/page/elearn-index.js"></script>
</body>

</html>