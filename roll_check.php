<?php

require 'db.php';
$roll = $_SESSION['id'];
$select_roll = "SELECT * FROM users WHERE id=$roll";
$select_result = mysqli_query($db_connect, $select_roll);
$after_assoc_roll = mysqli_fetch_assoc($select_result);


    if($after_assoc_roll['roll'] == 5 ){
        header('location:/elephant/dashboard.php');
    }
?>