<?php
    session_start();
    require '../db.php';

    $email = $_POST['email'];
    $roll = $_POST['roll'];

    $select_user_roll = "SELECT * FROM users WHERE email='$email'";
    $select_roll_result = mysqli_query($db_connect, $select_user_roll);
    $after_assoc_roll = mysqli_fetch_assoc($select_roll_result);

    if($email){

        if($roll){
            
        $update_roll = "UPDATE users SET roll='$roll' WHERE email='$email'";
        mysqli_query($db_connect, $update_roll);
        $_SESSION['roll_success'] = 'Users Position have been Changed'; 


        if($after_assoc_roll['roll'] > $roll){
            $_SESSION['promotion'] = 'You have been promoted'; 
            header('location:users.php');
        }
        
        if($after_assoc_roll['roll'] < $roll){
            $_SESSION['demotion'] = 'You have been demoted'; 
            header('location:users.php');
        }


        }
        else{
            $_SESSION['roll_err'] = 'Enter Position'; 
            header('location:users.php');

        }
    }
    else{
        $_SESSION['roll_email_err'] = 'Enter User Email'; 
        header('location:users.php');
        
    }


    


?>