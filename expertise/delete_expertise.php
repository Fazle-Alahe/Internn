<?php
session_start();
    require '../db.php';
    $id = $_GET['id'];

    $select = "SELECT COUNT(id) as ex_id FROM expertise";
    $select_result = mysqli_query($db_connect, $select);
    $after_assoc= mysqli_fetch_assoc($select_result);
 
    if($after_assoc['ex_id'] <= 4){
        $_SESSION['delete_failed'] = 'Minimum 4 Expertise Must be Added';
        header('location:expertise.php');
    }

    else{
        
    $delete = "DELETE  FROM expertise WHERE id=$id";
    mysqli_query($db_connect, $delete);
    $_SESSION['delete'] = 'Expertise Deleted Successfully';
    header('location:expertise.php');
    }

?>

