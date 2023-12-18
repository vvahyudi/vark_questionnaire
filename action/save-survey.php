<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}


include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $totalV = $totalA = $totalR = $totalK = 0;

    foreach ($_POST as $key => $value) {
        // Memeriksa apakah ini adalah elemen jawaban survey
        if (strpos($key, 'answer') === 0) {
            // Mendapatkan nilai preferensi dari value radio button
            $preference = intval($value);
    
            // Menentukan jenis belajar dari nama elemen formulir
            $learningTypeChar = substr($key, strlen('answer'));
    
            // Akumulasi nilai preferensi berdasarkan jenis belajar
      if ($preference ==1){
        $totalV +=1;
      } elseif ($preference ==2){
        $totalA +=1;
      }elseif ($preference ==3){
        $totalR +=1;
      } elseif ($preference ==4){
        $totalK +=1;
      }

        }
    }

    $maxValue = max($totalV, $totalA, $totalR, $totalK);

    if ($maxValue == $totalV && $maxValue == $totalA) {
      $learningCode = 12;
  } elseif ($maxValue == $totalV && $maxValue == $totalR) {
      $learningCode = 13;
  } elseif ($maxValue == $totalV && $maxValue == $totalK) {
      $learningCode=14;
  } elseif ($maxValue == $totalA && $maxValue == $totalR) {
      $learningCode =23;
  } elseif ($maxValue == $totalA && $maxValue == $totalK) {
      $learningCode=24;
  } elseif ($maxValue == $totalR && $maxValue == $totalK) {
      $learningCode=34;
  } elseif ($maxValue == $totalV) {
      $learningCode = 1;
  } elseif ($maxValue == $totalA) {
      $learningCode = 2;
  } elseif ($maxValue == $totalR) {
      $learningCode = 3;
  } elseif ($maxValue == $totalK) {
      $learningCode = 4;
  }
   
    error_log("totalV: $totalV, totalA: $totalA, totalR: $totalR, totalK: $totalK");

    // $result = mysqli_query($conn, "INSERT INTO survey_result (level_result, student_id) VALUES ('{$level}', '{$_SESSION['student_id']}')");
    $result = mysqli_query($conn, "INSERT INTO survey_results (student_id, visual, auditory, reading, kinesthetic,learning_result) 
                                    VALUES ('{$_SESSION['student_id']}', '{$totalV}', '{$totalA}', '{$totalR}', '{$totalK}', '{$learningCode}')");
    if (!$result) {
        echo mysqli_error($conn);
    } else {
        header('location: ../student/index-adaptive-learning.php');
    }
}