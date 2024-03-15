<?php

session_start();
require '../login_check.php';
require '../db.php';


$id = $_SESSION['id'];
$select = "SELECT * FROM users WHERE id != $id";
$all_users = mysqli_query($db_connect, $select); 

$select_roll = "SELECT * FROM users WHERE id=$id";
$roll_result = mysqli_query($db_connect, $select_roll);
$after_assoc = mysqli_fetch_assoc($roll_result); 


if($after_assoc['roll'] == 3 || $after_assoc['roll'] == 4 ){
    header('location:/elephant/dashboard.php');
}

require '../roll_check.php';


$title = 'User List';
$header_title = 'User List';
require '../dashboard_header.php';


?>

<?php
   
?>


<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Users List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>

<div class="content-body">
            <!-- row -->
			<div class="container-fluid">


    
        <div class="row">

        <?php if($after_assoc['roll'] == 1  || $after_assoc['roll'] == 2 ) {?>
            <div class="col-lg-8 m-auto">
                <div class="card">
                    <div class="card-header text-center">
                        <h3>Users List</h3>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered ">
                            <tr>
                                <th> SL </th>
                                <th> ID </th>
                                <th> Name </th>
                                <th> Email </th>
                                <th> Gender </th>
                                <th> Roll </th>
                                <?php if($after_assoc['roll'] == 1 ) {?>
                                <th> Action </th>
                                <?php }?>
                            </tr>
                            <?php foreach($all_users as $key=> $user){?>

                            <tr>
                                <td> <?= $key+1?> </td>
                                <td> <?= $user['id']?> </td>
                                <td> <?= $user['name']?> </td>
                                <td> <?= $user['email']?> </td>
                                <td> <?= $user['gender']?> </td>
                                <td class="text-center fs-5"> 
                               
                                   <?php
                                       if($user['roll'] ==1){
                                        echo '<span class="badge badge-primary"> Supper Admin </span>';
                                        } 
                                        
                                    elseif($user['roll'] ==2){
                                        echo '<span class="badge badge-primary"> Admin </span>';
                                    }
                                    elseif($user['roll'] ==3){

                                        echo '<span class="badge badge-primary"> Moderator </span>';
                                    }
                                    elseif($user['roll'] ==4){

                                        echo '<span class="badge badge-primary"> Editor </span>';
                                    }
                                    elseif($user['roll'] ==5){

                                        echo '<span class="badge badge-primary"> Visitor </span>';
                                    }
                                        
                                        ?>
                                       
                                </td>
                                
                                
                                <?php if($after_assoc['roll'] == 1 ) {?>
                                    <td>
                                    <div class="d-flex">
                                    <a href="user_edit.php?id=<?=$user['id']?>" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                    <a href="delete_user.php?id=<?=$user['id']?>" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                                    </div>


                                    
                                </td>
                                <?php }?>
                                
                            </tr>
                                <?php }?>
                        </table>
                    </div>
                </div>
            </div>
        <?php } ?>


        <?php if($after_assoc['roll'] == 1 || $after_assoc['roll']==2 ) {?>
            <div class="col-lg-4">
                        <div class="card">
                            <div class="card-header mb-0">

                            
                                <h2>Add New User</h2>
                            
                            
                               
                                
                            </div>
    <div class="card-body">
        
            <form action="post_add_user.php" method="post">
               
            
            
            <!-- Header Alert Start -->
                <?php if(isset( $_SESSION['reg_success'])){?>
                    
                        <div class="alert alert-success solid alert-dismissible fade show">
                            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                            <strong>Success!</strong> <?=$_SESSION['reg_success']?>
                            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
                            </button>
                        </div>
                 <?php }  unset($_SESSION['reg_success']);?>
                <!-- Header Alert Start -->


<!-- Name  -->
      <div class="form-group">
          <label class="mb-1 text-black"><strong>Name</strong></label>
          <input type="text" class="form-control "  name="name" 
          value="<?=(isset($_SESSION['old_name'])?$_SESSION['old_name']:'')?>">
          
         <div class=" text-danger "> <?php if(isset( $_SESSION['name_err'])){
                  echo $_SESSION['name_err'] ;
                   unset($_SESSION['name_err']);
                   }?>
         </div>
      </div>
                  
      <!-- Email -->

      <div class="form-group">
          <label class="mb-1 text-black"><strong>Email</strong></label>
          <input type="text" class="form-control "  name="email"
          value="<?=(isset($_SESSION['old_email'])?$_SESSION['old_email']:'')?>">
          <div class=" text-danger "> <?php if(isset( $_SESSION['email_err'])){
                  echo $_SESSION['email_err'] ;
                   unset($_SESSION['email_err']);
                   }?>
         </div>

         <div class=" text-danger "> <?php if(isset( $_SESSION['exist'])){
                  echo $_SESSION['exist'] ;
                   unset($_SESSION['exist']);
                   }?>
         </div>

         
      </div>

              <!-- pass -->
      <div class="form-group pass">
          <label class="mb-1 text-black"><strong>Password</strong></label>
          <input id="input" type="password" class="form-control "  
          value="<?=(isset($_SESSION['old_pass'])?$_SESSION['old_pass']:'')?>"
           name="password">

          <div class=" text-black">  Uppercase, lowercase, Special Character, and Number must be  used in Your Password  </div>
          <div class=" text-danger "> <?php if(isset( $_SESSION['pass_err'])){
                  echo $_SESSION['pass_err'] ;
                   unset($_SESSION['pass_err']);
                   }?>
         </div>
         <!-- Pass Req -->
         <div class=" text-danger "> <?php if(isset( $_SESSION['upper_pass'])){
                  echo $_SESSION['upper_pass'] ;
                   unset($_SESSION['upper_pass']);
                   }?>
                   
                   <?php if(isset( $_SESSION['lower_pass'])){
                  echo $_SESSION['lower_pass'] ;
                   unset($_SESSION['lower_pass']);
                   }?>
                   <?php if(isset( $_SESSION['spcl_pass'])){
                  echo $_SESSION['spcl_pass'] ;
                   unset($_SESSION['spcl_pass']);
                   }?>
                   <?php if(isset( $_SESSION['num_pass'])){
                  echo $_SESSION['num_pass'] ;
                   unset($_SESSION['num_pass']);
                   }?>
                   <?php if(isset( $_SESSION['len_pass'])){
                  echo $_SESSION['len_pass'] ;
                   unset($_SESSION['len_pass']);
                   }?>
         </div>
         
         





         <i class="fa fa-eye" id="show_pass"> </i>

      </div>


      <div class="form-group pass">
          <label class="mb-1 text-black"><strong>Confirm Password</strong></label>
          <input id="input2" type="password" class="form-control "
          value="<?=(isset($_SESSION['old_con_pass'])?$_SESSION['old_con_pass']:'')?>"
           name="con_password">
      
      <div class=" text-danger "> <?php if(isset( $_SESSION['con_pass_err'])){
                  echo $_SESSION['con_pass_err'] ;
                   unset($_SESSION['con_pass_err']);
                   }?>
      <?php if(isset( $_SESSION['match_pass_err'])){
                  echo $_SESSION['match_pass_err'] ;
                   unset($_SESSION['match_pass_err']);
                   }?>
      </div>
          <i class="fa fa-eye" id="show_pass2"> </i>
      </div>


         
         <?php
              $gender = '';

              if(isset($_SESSION['old_gender'])){
                  $gender = $_SESSION['old_gender'];
              }
          ?>
          <label class="mb-1 text-black"><strong>Select Your Gender</strong></label>
      <div class="form-check">      
      <input class="form-check-input border border-primary" type="radio" name="gender" value="male"  <?=($gender == 'male'? 'checked':'')?> >
      <label class="form-check-label text-black">
          Male
      </label> <br>
      
      <input class="form-check-input border border-primary" type="radio" name="gender" value="female"  <?=($gender == 'female'? 'checked':'')?> >
      <label class="form-check-label text-black" for="flexRadioDefault2">
          Female
      </label>
      <div class=" text-danger "> <?php if(isset( $_SESSION['gender_err'])){
                  echo $_SESSION['gender_err'] ;
                   unset($_SESSION['gender_err']);
                   }?>
         </div>
      </div>



      <div class="text-center mt-2">
          <button type="submit" class="btn btn-primary   ">Create Account</button>
      </div>
  </form>
    </div>
                        </div>
            </div>
            <?php } ?>

        </div>







        <?php if($after_assoc['roll'] == 1){?>

        <!-- roll change -->

        <div class="row ">
        <div class="col-lg-5 m-auto">
                        <div class="card">
                            <div class="card-header mb-0">
                               <h2>Position Change </h2>                               
                            </div>
        <div class="card-body">
        
            <form action="post_roll.php" method="post">
               
            
            
            <!-- Header Alert Start -->
                <?php if(isset( $_SESSION['roll_success'])){?>
                    
                        <div class="alert alert-success solid alert-dismissible fade show">
                            <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                            <strong>Success!</strong> <?=$_SESSION['roll_success']?>
                            <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
                            </button>
                        </div>
                 <?php }  unset($_SESSION['roll_success']);?>
                <!-- Header Alert Start -->


<!-- Email  -->
      <div class="form-group">
          <label class="mb-1 text-black"><strong>Email</strong></label>
         
          <input 
          type="email" 
          class="form-control"  
          name="email" 
          >
          
         <div class=" text-danger "> <?php if(isset( $_SESSION['roll_email_err'])){
                  echo $_SESSION['roll_email_err'] ;
                   unset($_SESSION['roll_email_err']);
                   }?>
         </div>
      </div>

      <!-- Roll -->
      <div class="form-group">
          <label class="mb-1 text-black"><strong>Post</strong></label>
          
          <input 
          type="number" 
          class="form-control "  
          name="roll" 
          >
          
          <span class="mb-1 text-black text-muted">Supper Admin = 1, Admin = 2, Moderator = 3, Editor = 4, Visitor = 5.</span>
          
         <div class=" text-danger "> <?php if(isset( $_SESSION['roll_err'])){
                  echo $_SESSION['roll_err'] ;
                   unset($_SESSION['roll_err']);
                   }?>
         </div>
      </div>

      <button class="btn btn-primary"> Change Position</button>
                  

  </form>
    </div>
         </div>
            </div>
                </div>


            <?php } ?>




        
    

    </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>



<?php
    require '../dashboard_footer.php';
    unset($_SESSION['old_email']);
?>

<?php if(isset($_SESSION['demotion'])){ ?>  
    
    <script>
        Swal.fire({
  icon: 'warning',
  title: 'Bad Luck...',
  text: '<?=$_SESSION['demotion']?>',
})
    </script>
    
    <?php } 
    unset($_SESSION['demotion'])?>

<?php if(isset($_SESSION['promotion'])){ ?>  
    
    <script>
        Swal.fire({
  icon: 'success',
  title: 'Congratulation...',
  text: '<?=$_SESSION['promotion']?>',
})
    </script>
    
    <?php } 
    unset($_SESSION['promotion'])?>