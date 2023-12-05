<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}


include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $modul_1 = array();
    $modul_2 = array();
    $modul_3 = array();
    $modul_4 = array();
    $modul_5 = array();
    $modul_6 = array();
    $modul_7 = array();


    foreach ($_POST as $key =>  $p) {
        $question_id = substr($key, 8);
        $sql = "SELECT * FROM module_question WHERE id = '{$question_id}'";
        $query = mysqli_query($conn, $sql);
        $mq = mysqli_fetch_array($query, MYSQLI_ASSOC);
        if ($mq['answer'] == $p) {
            if ($mq['module_id'] == 1) {
                $modul_1[] = 1;
            } else if ($mq['module_id'] == 2) {
                $modul_2[] = 1;
            } else if ($mq['module_id'] == 3) {
                $modul_3[] = 1;            
            } else if ($mq['module_id'] == 4) {
                $modul_4[] = 1;
            } else if ($mq['module_id'] == 5) {
                $modul_5[] = 1;
            } else if ($mq['module_id'] == 6) {
                $modul_6[] = 1;
            } else if ($mq['module_id'] == 7) {
                $modul_7[] = 1;
        
            }
        } else {
            if ($mq['module_id'] == 1) {
                $modul_1[] = 0;
            } else if ($mq['module_id'] == 2) {
                $modul_2[] = 0;
            } else if ($mq['module_id'] == 3) {
                $modul_3[] = 0;            
            } else if ($mq['module_id'] == 4) {
                $modul_4[] = 0;
            } else if ($mq['module_id'] == 5) {
                $modul_5[] = 0;
            } else if ($mq['module_id'] == 6) {
                $modul_6[] = 0;
            } else if ($mq['module_id'] == 7) {
                $modul_7[] = 0;
       
            }
        }
    }


    //Hitung modul1
    $hitung_modul_1 = mode($modul_1);
    //Hitung modul2
    $hitung_modul_2 = mode($modul_2);
    //Hitung modul3
    $hitung_modul_3 = mode($modul_3);
    //Hitung modul4
    $hitung_modul_4 = mode($modul_4);
    // //Hitung modul5
    $hitung_modul_5 = mode($modul_5);
    // //Hitung modul6
    $hitung_modul_6 = mode($modul_6);
    // //Hitung modul7
    $hitung_modul_7 = mode($modul_7);


   
    $result = mysqli_query($conn, "INSERT INTO pre_test_answer (student_id, modul_1, modul_2, modul_3, modul_4, modul_5, modul_6, modul_7) VALUES ('{$_SESSION['student_id']}', '{$hitung_modul_1}','{$hitung_modul_2}','{$hitung_modul_3}','{$hitung_modul_4}','{$hitung_modul_5}','{$hitung_modul_6}','{$hitung_modul_7}')");
    if (!$result) {
        echo mysqli_error($conn);
    } else {
        header('location: ../student/index-adaptive-learning.php');
    }
}

function mode($armodul)
{
    $total = 0;
    $v = array_count_values($armodul);
    arsort($v);
    foreach ($v as $k => $v) {
        $total = $k;
        break;
    }
    return $total;
}