<?php

if (isset($_GET['id'])) {
    $studentId = $_GET['id'];

    include 'StudentManager.php';

    $studentManager = new StudentManager();

    $studentManager->deleteStudent($studentId);

    header("Location: dashboard.php");
    exit();
} else {
    header("Location: students.php");
    exit();
}

