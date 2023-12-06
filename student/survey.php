<?php

session_start();

if (!isset($_SESSION['name'])) {
    header('location: ../sign-in.php');
}

include('../config/db.php');

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
                                            <form action="../action/save-survey.php" method="POST">
                                                <div class="row align-items-center">
                                                    <?php
                                                    // mengambil data pertanyaan survey dari database
                                                    $question = mysqli_query($conn, "SELECT * FROM survey_question");
                                                    $answer = mysqli_query($conn, "SELECT * FROM survey_answer");
                                                    $row_answer = mysqli_fetch_all($answer, MYSQLI_ASSOC);
                                                    $row_question = mysqli_fetch_all($question, MYSQLI_ASSOC);

                                                    // perulangan pertannyaan
                                       // perulangan pertanyaan
foreach ($row_question as $q) { ?>
    <div class="row my-1">
        <div class="col text-center">
            <strong><?php echo $q['id']; ?>.</strong>
        </div>
        <div class="col-11">
            <!-- menampilkan pertanyaan survey-->
            <strong><?php echo $q['question'] ?></strong>
        </div>
    </div>

    <?php 
    // perulangan jawaban berdasarkan question_id
    foreach ($row_answer as $a) {
        if ($a['question_id'] == $q['id']) { ?>
            <div class="row my-1">
                <div class="col-11 offset-1">
                    <div class="form-check">
                        <input class="form-check-input" type="radio"
                            name="answer<?php echo $a['question_id']; ?>" value="<?php echo $a['value']; ?>"
                            required>
                        <label class="form-check-label"
                            for="tipeguru1"><?php echo $a['response_text'];?></label>
                    </div>
                </div>
            </div>
        <?php }
    } ?>
<?php } ?>
                                             
                                                   
                                                    <div class="row my-1">
                                                        <div class="col-11 offset-1">
                                                            <button type="submit"
                                                                class="btn btn-primary btn-lg"><b>SIMPAN</b></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
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
    <script src="../assets/bundles/libscripts.bundle.js"></script>

    <!-- Plugin Js-->
    <script src="../node_modules/owl.carousel2/dist/owl.carousel.min.js"></script>
    <script src="../assets/bundles/apexcharts.bundle.js"></script>

    <!-- Jquery Page Js -->
    <script src="../js/template.js"></script>
    <script src="../js/page/elearn-index.js"></script>
</body>

</html>