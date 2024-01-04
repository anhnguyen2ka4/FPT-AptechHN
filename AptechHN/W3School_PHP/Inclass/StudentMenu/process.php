<?php

class StudentManager
{
    private $conn; // teen doi tuong cnnection
//    private function idValid($id)
//    {
//        return is_numeric($id) && $id >0;
//    }
    public function __construct($host, $username, $password, $dbname)
    {
        $this->conn = new mysqli($host, $username, $password, $dbname);
        if ($this->conn->connect_error) { // Sửa ở đây
            die("Connection failed: " . $this->conn->connect_error); // Và ở đây
        }
    }

    public function addStudent($id, $name, $address)
    {
        // Câu lệnh truy vấn
        $sql = "INSERT INTO students(id, name, address) VALUES (?, ?, ?)";
        // Sử dụng câu lệnh Statement trong PHP để thực thi câu lệnh query trên
        // prepare() đóng vai trò quan trọng đảm bảo tính chất an toàn khi có thao tác với dữ liệu
        // loại trừ mã độc đảm bảo an toàn
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("iss", $id, $name, $address);
        if ($stmt->execute()) {
            echo "Insert student with id $id added successfully.\n";
        } else {
            echo "Error add student. $stmt->error\n";
        }
    }
    public function viewStudent($id)
    {
        // Câu lệnh truy vấn
        $sql = "SELECT * FROM students WHERE id = ?";
        // Sử dụng câu lệnh Statement trong PHP để thực thi câu lệnh query trên
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
//        if(!$this->isValidId($id)){
//            echo "Invalid student ID. Please enter a valid ID\n.";
//            return;
//        }
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "id: " . $row["id"]. "<br>Name: " . $row["name"]. "<br>Address: " . $row["address"]. "<br><br>";
                }
            } else {
                echo "No student found with id $id\n";
            }
        } else {
            echo "Error view student. $stmt->error\n";
        }
    }
    public function updateStudent($id, $name, $address)
    {
        // Kiểm tra xem sinh viên có tồn tại không
        $sql = "SELECT * FROM students WHERE id = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows == 0) {
                echo "No student found with id $id\n";
                return;
            }
        } else {
            echo "Error checking student. $stmt->error\n";
            return;
        }

        // Câu lệnh truy vấn
        $sql = "UPDATE students SET name = ?, address = ? WHERE id = ?";
        // Sử dụng câu lệnh Statement trong PHP để thực thi câu lệnh query trên
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("ssi", $name, $address, $id);
        if ($stmt->execute()) {
            echo "Update student with id $id successfully.\n";
        } else {
            echo "Error update student. $stmt->error\n";
        }
    }

    public function deleteStudent($id)
    {
        $sql = "SELECT * FROM students WHERE id = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows == 0) {
                echo "No student found with id $id\n";
                return;
            }
        } else {
            echo "Error checking student. $stmt->error\n";
            return;
        }
        // Câu lệnh truy vấn
        $sql = "DELETE FROM students WHERE id = ?";
        // Sử dụng câu lệnh Statement trong PHP để thực thi câu lệnh query trên
        // prepare() đóng vai trò quan trọng đảm bảo tính chất an toàn khi có thao tác với dữ liệu
        // loại trừ mã độc đảm bảo an toàn
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("i", $id);
        if ($stmt->execute()) {
            echo "Delete student with id $id successfully.\n";
        } else {
            echo "Error delete student. $stmt->error\n";
        }
    }
    public function displayAllStudents()
    {
        // Câu lệnh truy vấn
        $sql = "SELECT * FROM students";
        // Sử dụng câu lệnh Statement trong PHP để thực thi câu lệnh query trên
        $stmt = $this->conn->prepare($sql);
        if ($stmt->execute()) {
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "id: " . $row["id"]. "<br>Name: " . $row["name"]. "<br>Address: " . $row["address"]. "<br><br>";
                }
            } else {
                echo "No students found\n";
            }
        } else {
            echo "Error display all students. $stmt->error\n";
        }
    }
}

// Thông tin kết nối CSDL
$host = "localhost:3306"; // server name + port mặc định của MySQL
$username = "root"; // username mặc định
$password = ""; // password mặc định
$dbname = "FPTAPTECH"; // tên của CSDL đã tạo

// Quản lý các thao tác chạy từ Form
// Tạo đối tượng của StudentManager
$studentManager = new StudentManager($host, $username, $password, $dbname);
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $option = $_POST["choice"]; // add=1, view=2, update=3, delete=4, display_all=5...
    switch ($option) {
        case 1:
            // add student
            $id = $_POST["id"];
            $name = $_POST["name"];
            $address = $_POST["address"];
            $studentManager->addStudent($id, $name, $address);
            break;
        case 2:
            // view student
            $id = $_POST["id"];
            $studentManager->viewStudent($id);
            break;
        case 3:
            // update student
            $id = $_POST["id"];
            $name = $_POST["name"];
            $address = $_POST["address"];
            $studentManager->updateStudent($id, $name, $address);
            break;
        case 4:
            // delete student
            $id = $_POST["id"];
            $studentManager->deleteStudent($id);
            break;
        case 5:
            // display all students
            $studentManager->displayAllStudents();
            break;
    }
}
