<?php
    $email = $_POST['email'];
    $password = $_POST['password'];

    //Database connection
    $con = new mysqli("localhost", "root", "", "skillshare");
    if($con->connect_error)
    {
        die("Failed to connect : ".$con->connect_error);
    }
    else
    {
        $stmt = $con->prepare("select * from registration where email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt_result = $stmt->get_result();
        if($stmt_result->num_rows > 0)
        { 
            $data = $stmt_result->fetch_assoc();
            if($data['password'] == $password)
            {
                echo "<h1>Login Successful!</h1> ";
            }
            else
            {
                echo "<h1>Invalid Email / Password!</h1> ";
            }
        }   
        else
        {
            echo "<h1>Email NOT registered!</h1> ";
        }   
        
    }


?>