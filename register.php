<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<!-- login23:11-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    <title>Doctor-Connect Registration</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body style="height:100vh ;">
    <div class="main-wrapper account-wrapper" style="background-color:white">
        <div class="row" style="height:100% ;">


            <div class="col-lg-7" >

           <div class="card" >

                <img src="assets/img/bg.jpg" style="min-height: 650px;object-fit: cover;">


            </div>



            </div>
			<div class="col-lg-5 ml-0" style="height:100% ;">
				<div class="card elevation-0" style="min-height:650px">

                <div class="card-body">
                   <div class="account-logo">
                        <img src="assets/img/logo-dark.png" alt="" height="60" width="60">
                    </div>
                    <h1 class="text-center">Doctor Connect</h1>
                    <h3 class="text-center">Patient Registration</h3>
                    <hr>

                    <form method="post" action="actions/action.php" id="form">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>First Name <span class="text-danger">*</span></label>
                                        <input class="form-control" type="text" name="first_name" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input class="form-control" type="text" name="last_name" required>
                                    </div>
                                </div>
                                
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email <span class="text-danger">*</span></label>
                                        <input class="form-control" type="email" name="email" required>
                                    </div>
                                </div>


                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input class="form-control" id="password1" type="password" name="password" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <input class="form-control" id="password2"  type="password" required >
                                    </div>
                                </div>
								
                                <div class="col-sm-6">
									<div class="form-group gender-select">
										<label class="gen-label">Gender:</label>
										<div class="form-check-inline">
											<label class="form-check-label">
												<input type="radio" name="gender" value="m" class="form-check-input" required>Male
											</label>
										</div>
										<div class="form-check-inline">
											<label class="form-check-label">
												<input type="radio" name="gender" value="f" class="form-check-input" required>Female
											</label>
										</div>
									</div>
                                </div>



                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Age <span class="text-danger"></span></label>
                                       
                                            <input type="number" class="form-control" name="age" required>
                                       
                                    </div>
                                </div>
								

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Phone </label>
                                        <input class="form-control" id="submit" type="text" name="contact" required>
                                    </div>
                                </div>
                                
                            </div>
							
                           
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary form-control" name="add_patient">Create Account</button>
                            </div>
                            <br>
                            <div class="text-center  register-link" id="adminContact" style="cursor:pointer">
                            Have an account? <a href="login.php">login</a> 
                        </div>
                        </form>

                 </div>


                </div>
			</div>
        </div>
    </div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/sweetalert.min.js"></script>
    <script src="assets/js/validate.js"></script>
	<script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/app.js"></script>
   


    <script>
        $(function(){
            $("#adminContact").on("click",function(ev){
                swal("Info","Contact Administrator Support for help","info");
            })

            $("#adminContact1").on("click",function(ev){
                swal("Info","Contact Administrator Support for help","info");
            })
        })
    </script>


    <?php if(isset($_SESSION["success"])):?>

        <script>
        swal("Success","<?php echo $_SESSION["success"] ?>","success");
        </script>
        
    <?php endif ?>


    <?php if(isset($_SESSION["success"])):?>

    <script>
    swal("Info","<?php echo $_SESSION["info"] ?>","info");
    </script>

    <?php endif ?>

        <?php if(isset($_SESSION["error"])):?>
        <script>
        swal("Error","<?php echo $_SESSION["error"] ?>","error");
        </script>
    <?php endif ?>

    <?php if(isset($_SESSION["info"])):?>
        <script>
        swal("Info","<?php echo $_SESSION["info"] ?>","info");
        </script>
    <?php endif ?>
</body>
<!-- login23:12-->
</html>


<?php
    unset($_SESSION["success"]);
    unset($_SESSION["error"]);
    unset($_SESSION["info"]);
?>