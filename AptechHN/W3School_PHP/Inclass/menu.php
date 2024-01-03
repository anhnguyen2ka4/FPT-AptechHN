<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
class Student {
    // Properties
    public $id;
    public $name;
    public $address;

    // Constructor
    public function __construct($id, $name, $address) {
        $this->id = $id;
        $this->name = $name;
        $this->address = $address;
    }
}

class StudentManager {
    // Array to store student objects
    private $students = array();

    // Method to add a new student to the array
    public function addStudent($id, $name, $address) {
        $student = new Student($id, $name, $address);
        $this->students[$id] = $student;
        echo "Student with ID $id added successfully.\n";
    }

    // Method to retrieve a student by ID
    public function getStudent($id) {
        if (isset($this->students[$id])) {
            return $this->students[$id];
        } else {
            return null;
        }
    }

    // Method to update a student's information
    public function updateStudent($id, $name, $address) {
        if (isset($this->students[$id])) {
            $this->students[$id]->name = $name;
            $this->students[$id]->address = $address;
            echo "Student with ID $id updated successfully.\n";
        } else {
            echo "Student with ID $id not found.\n";
        }
    }

    // Method to delete a student by ID
    public function deleteStudent($id) {
        if (isset($this->students[$id])) {
            unset($this->students[$id]);
            echo "Student with ID $id deleted successfully.\n";
        } else {
            echo "Student with ID $id not found.\n";
        }
    }

    // Method to display all student information
    public function displayAllStudents() {
        echo "All Students Information:\n";
        foreach ($this->students as $student) {
            echo "ID: {$student->id}\n";
            echo "Name: {$student->name}\n";
            echo "Address: {$student->address}\n\n";
        }
    }
}

// Function to display menu and handle user input
function menu() {
    echo "1. Add Student\n";
    echo "2. View Student Information\n";
    echo "3. Update Student Information\n";
    echo "4. Delete Student\n";
    echo "5. Display All Students\n";
    echo "0. Exit\n";

    // Get user input
    $choice = readline("Enter your choice: ");

    return $choice;
}

// Example Usage

// Create a StudentManager instance
$studentManager = new StudentManager();

do {
    $option = menu();

    switch ($option) {
        case 1:
            // Add Student
            $id = readline("Enter student ID: ");
            $name = readline("Enter student name: ");
            $address = readline("Enter student address: ");
            $studentManager->addStudent($id, $name, $address);
            break;

        case 2:
            // View Student Information
            $id = readline("Enter student ID: ");
            $student = $studentManager->getStudent($id);
            if ($student !== null) {
                echo "Student Information:\n";
                echo "ID: {$student->id}\n";
                echo "Name: {$student->name}\n";
                echo "Address: {$student->address}\n";
            } else {
                echo "Student with ID $id not found.\n";
            }
            break;

        case 3:
            // Update Student Information
            $id = readline("Enter student ID: ");
            $name = readline("Enter updated name: ");
            $address = readline("Enter updated address: ");
            $studentManager->updateStudent($id, $name, $address);
            break;

        case 4:
            // Delete Student
            $id = readline("Enter student ID to delete: ");
            $studentManager->deleteStudent($id);
            break;

        case 5:
            // Display All Students
            $studentManager->displayAllStudents();
            break;

        case 0:
            // Exit the program
            echo "Exiting the program.\n";
            break;

        default:
            echo "Invalid choice. Please enter a valid option.\n";
    }

} while ($option != 0);

?>
</body>
</html>