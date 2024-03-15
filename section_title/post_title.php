<?php
session_start();
require '../db.php';
$selection = $_POST['selection'];

$sub_title = $_POST['sub_title'];
$title = $_POST['title'];

// expertise
// services
// portfolio
// testimonial
// contact

if($selection== 'expertise'){
    $update = "UPDATE section_title SET sub_title='$sub_title', title='$title' WHERE id=1";
    mysqli_query($db_connect, $update);
    header('location:section_title.php');
} 
elseif ($selection == 'services') {
    $update = "UPDATE section_title SET sub_title='$sub_title', title='$title' WHERE id=2";
    mysqli_query($db_connect, $update);
    header('location:section_title.php');
}
elseif ($selection == 'portfolio') {
    $update = "UPDATE section_title SET sub_title='$sub_title', title='$title' WHERE id=3";
    mysqli_query($db_connect, $update);
    header('location:section_title.php');
}
elseif ($selection == 'testimonial') {
    $update = "UPDATE section_title SET sub_title='$sub_title', title='$title' WHERE id=4";
    mysqli_query($db_connect, $update);
    header('location:section_title.php');
}
elseif ($selection == 'contact') {
    $update = "UPDATE section_title SET sub_title='$sub_title', title='$title' WHERE id=5";
    mysqli_query($db_connect, $update);
    header('location:section_title.php');
}

else{
    $_SESSION['error'] = 'Update Hoyni';
    header('location:section_title.php');
}



?>