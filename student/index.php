<?php

include('../config/db.php');
session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

// set variable
$level_student = 0;

// mengambil data level student dari database
$query = mysqli_query($conn, "SELECT * FROM level_student WHERE student_id = '{$_SESSION['student_id']}'");
if (mysqli_num_rows($query) > 0) {
    // jika data ada set level student
    $result = mysqli_fetch_array($query);
    $level_student = $result['level'];
    $_SESSION['level'] = $result['level'];
    $_SESSION['test_processed'] = true;
} else {
    // jika tidak ada maka tes belum diproses
    $_SESSION['test_processed'] = false;
}

// mengambil data hasil survey murid
$survey = mysqli_query($conn, "SELECT * FROM survey_result where student_id = '{$_SESSION['student_id']}'");
$survey_row = mysqli_num_rows($survey);
// jika ada hasil survey
if ($survey_row == 1) {
    // set hasil survey level
    $_SESSION['survey_taken'] = true;
    $level = mysqli_fetch_array($survey, MYSQLI_ASSOC);
    $_SESSION['levels'] = $survey;
} else {
    $_SESSION['survey_taken'] = false;
}

// mengambil data jawaban pre test untuk mengecek apakah murid sudah mengambil pretest
$sql = "SELECT * FROM pre_test_answer WHERE student_id = '{$_SESSION['student_id']}'";
$query = mysqli_query($conn, $sql);
if (mysqli_num_rows($query) > 0) {
    $_SESSION['pre_test_taken'] = true;
} else {
    $_SESSION['pre_test_taken'] = false;
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
        <?php //include('../layout/sidebar.php'); 
        ?>

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
                            <div class="card mb-3 color-bg-200">
                                <div class="card-body">
                                    <a href="index-adaptive-learning.php" class="btn btn-primary p-3"><h3><strong>Adaptive Learning</strong></h3></a>
                                    &nbsp;
                                    &nbsp;
                                    &nbsp;
                                    &nbsp;
                                    <a href="index-e-learning.php" class="btn btn-info p-3 text-white"><h3><strong>E-Learning</strong></h3></a>
                                </div>
                            </div>
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