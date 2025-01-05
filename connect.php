<?php
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $number = $_POST['number'];

    //Database connection
    $conn = new mysqli('localhost', 'root', '', 'skillshare');
    if($conn->error)
    {
        ini_set('display_errors', 1); 
        error_reporting(E_ALL);
        die('Connection Failed : '.$conn->connect_error);
    }
    else 
    {
        $stmt = $conn->prepare( "insert into registration (firstName, lastName, gender, email, password, number) values(?, ?, ?, ?, ?, ?) ");

        $stmt->bind_param("sssssi", $firstName, $lastName, $gender, $email, $password, $number );
        $stmt->execute();
        echo "Registration Success...";
        $stmt->close();
        $conn->close();
    }

?>