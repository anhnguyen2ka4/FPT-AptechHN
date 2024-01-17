<?php
class Database
{
    private $servername = "localhost:3306";
    private $username = "root";
    private $password = "";
    private $dbname = "fptaptechdb";
    public $conn;

    public function __construct()
    {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        }
    }

    public function closeConnection()
    {
        $this->conn->close();
    }
}
class Student{
    protected $db;
    public function __construct(Database $db)
    {
        $this->db=$db;
    }
    public function getAllStudents()
    {
        $sql = "SELECT * FROM Students";
        $result = $this->db->conn->query($sql);
        return  $result->fetch_all(MYSQLI_ASSOC);
    }
    public function getMarksByStudent($student_id)
    {
        $sql ="SELECT Subjects.name, Marks.mark FROM Marks LEFT JOIN 
                   Subjects ON Marks.subject_id = Subjects.id WHERE Marks.student_id = '$student_id'";
        $result = $this->db->conn->query($sql);
        return $result->fetch_all(MYSQLI_ASSOC);
    }
}
$db = new Database();
$student = new Student($db);
$mark = new Student($db);