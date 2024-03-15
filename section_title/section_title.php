<?php
session_start();
require '../db.php';
$title = 'Section Title';
$header_title = 'Section Title';
require '../dashboard_header.php';

$select = "SELECT * FROM section_title";
$select_title = mysqli_query($db_connect, $select);

?>
<!--**********************************
            Content body start
        ***********************************-->
<div class="content-body ">
    <!-- row -->
    <div class="container-fluid ">
        <div class="row m-auto">

            <div class="col-lg-6 ">
                <div class="card">
                    <div class="card-header">
                        <h2>Section Title Name </h2>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr>
                                <th>SL</th>
                                <th>Sub Title</th>
                                <th>Title</th>
                            </tr>
                            <?php
                            foreach ($select_title as $key => $section_title) { ?>

                                <tr>
                                    <td><?=$key+1?></td>
                                    <td><?= $section_title['sub_title']?></td>
                                    <td><?= $section_title['title']?></td>
                                </tr>
                               

                            <?php } ?>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h2>Update Section Title </h2>
                        <?php if (isset($_SESSION['error'])) { ?>
                            <?= $_SESSION['error'] ?>
                        <?php }
                        unset($_SESSION['error']) ?>
                    </div>
                    <div class="card-body">
                        <form action="post_title.php" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Select Section</label> <br>


                                


                                <select style="width: 200px;" name="selection" class="form-control">
                                    <option value="expertise">Expertise</option>
                                    <option value="services">Services</option>
                                    <option value="portfolio">Portfolio</option>
                                    <option value="testimonial">Testimonial</option>
                                    <option value="contact">Contact</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Sub Title</label>
                                <input type="text" name="sub_title" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1"> Title</label>
                                <input type="text" name="title" class="form-control">
                            </div>
                            <button class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!--**********************************
            Content body end
        ***********************************-->
<?php
require '../dashboard_footer.php';
?>