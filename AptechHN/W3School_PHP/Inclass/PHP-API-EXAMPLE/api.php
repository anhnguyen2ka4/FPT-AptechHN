<?php
global $student, $mark;
include 'config.php';
header('Content-Type: application/json');
if(isset($_GET['action'])){
    $action = $_GET['action'];
    switch ($action){
        case 'get_all_students': echo json_encode($student->getAllStudents());
            break;
        case 'get_marks_by_student':
            if (isset($_GET['student_id'])) {
                $student_id = $_GET['student_id'];
                echo json_encode($mark->getMarksByStudent($student_id));
            } else {
                echo json_encode(['error' => 'Missing student_id parameter']);
            }
            break;
    }

}
else{
    echo json_encode(['error'=>'No action']);
}
?>