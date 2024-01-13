<?php
//session_start();
//
//// Kiểm tra nếu người dùng chưa đăng nhập, chuyển hướng về trang đăng nhập
//if (!isset($_SESSION['user_id'])) {
//    header("Location: index.php");
//    exit();
//}

// Include 'StudentManager.php';
include 'StudentManager.php';

// Lấy danh sách sinh viên và điểm theo môn học
$studentManager = new StudentManager();
$markDetails = $studentManager->getMarkDetails();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mark Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

<div class="container mt-5">

    <h2>Mark Details</h2>

    <table class="table">
        <thead>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Subject</th>
            <th>Mark</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($markDetails as $markDetail): ?>
            <tr>
                <td><?php echo $markDetail['student_id']; ?></td>
                <td><?php echo $markDetail['student_name']; ?></td>
                <td><?php echo $markDetail['subject']; ?></td>
                <td><?php echo $markDetail['mark']; ?></td>
            </tr>
        <?php endforeach; ?>
        <a href="dashboard.php" class="btn btn-danger">Home</a>
        </tbody>
    </table>
</div>

</body>

</html>
