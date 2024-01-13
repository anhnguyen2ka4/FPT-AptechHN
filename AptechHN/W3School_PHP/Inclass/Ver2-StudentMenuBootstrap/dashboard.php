<?php
 //kiểm tra nếu người dùng chưa đăng nhập chuyển hướng về trang đăng nhập
session_start();
if (!isset($_SESSION['username'])){
    header("location: index.php");
    exit();
}
include 'StudentManager.php';
$studentManager = new StudentManager();

//lấy dah sách sinh viên va thong tin diem
$students = $studentManager->getAllStudentsWithMarks();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>welcome <?php echo $_SESSION['username'];?></h2>
    <p>this is the main page after successful login.</p>
    <a href="logout.php" class="btn btn-danger">Logout</a>
    <br>
    <h3>Student List</h3>


    <a href="add_student.php" class="btn btn-success mb-3 ">Add Student</a>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Action</th>
            <th>Mark Details</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($students as $student): ?>
            <tr>
                <td><?php echo $student['ID']; ?></td>
                <td><?php echo $student['Name']; ?></td>
                <td><?php echo $student['Address']; ?></td>

                <td>
                    <a href="edit_student.php?id=<?php echo $student['ID']; ?>"
                       class="btn btn-warning btn-sm">Edit</a>
                    <a href="delete.php?id=<?php echo $student['ID']; ?>"
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
                </td>
                <td>
                    <?php
                    //kiem tra xem sinh vien cos diem hay khong
                    if ($student['mark_count'] >0){
                        echo '<a href ="mark_detail.php?student_id='.$student['ID'].'"class ="btn btn-info btn-sm">
                        Mark Details</a>';
                    }else{
                        echo '<button type="button" class="btn btn-info btn-sm" disabled>Mark Details</button>';

                    }
                    ?>
                </td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
</body>
</html>

