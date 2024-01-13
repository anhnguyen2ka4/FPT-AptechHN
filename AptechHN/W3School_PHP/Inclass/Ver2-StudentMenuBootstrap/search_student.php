<?php

//session_start();
//
//// Kiểm tra nếu người dùng chưa đăng nhập, chuyển hướng về trang đăng nhập
//if (!isset($_SESSION['user_id'])) {
//    header("Location: index.php");
//    exit();
//}

// Kết nối đến StudentManager
include 'StudentManager.php';

$studentManager = new StudentManager();

// Xử lý tìm kiếm sinh viên
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $searchTerm = $_POST['searchTerm'];
    $searchResults = $studentManager->searchStudents($searchTerm);
} else {
    $searchResults = [];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Student</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="">
    <div class="form-group">
        <label for="searchTerm">Nhập từ khóa tìm kiếm:</label>
        <input type="text" class="form-control" id="searchTerm" name="searchTerm" required>
    </div>
    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
</form>

<?php if (!empty($searchResults)) : ?>
    <h3>Kết quả tìm kiếm:</h3>
    <ul>
        <?php foreach ($searchResults as $student) : ?>
            <li><?php echo $student['Name']; ?> - <?php echo $student['Address']; ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>
<br>
</body>
</html>
