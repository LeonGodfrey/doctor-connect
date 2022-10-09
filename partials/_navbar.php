<div class="header">
			<div class="header-left">
				<a href="#" class="logo">
					<img src="assets/img/logo.png" alt="" width="35" height="35"> <span>Doctor Connect</span>
				</a>
			</div>
			<a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>



            <ul class="nav user-menu float-right">
                
                <li class="nav-item dropdown d-none d-sm-block">
                    <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><i class="fa fa-comment-o"></i> <span class="badge badge-pill bg-danger float-right chat-count"></span></a>
                </li>
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">


                                <?php if($_SESSION["role"]=="doctor"): ?>
                                      <span class="user-img"><img class="rounded-circle" src="assets/img/<?php echo $_SESSION["user"][0]["profile_image"] ?>" alt="Doctor" width="40">
                                <?php endif ?>

                                <?php if($_SESSION["role"]=="patient"): ?>

                                <span class="user-img"><img class="rounded-circle" src="assets/img/<?php echo $_SESSION["user"][0]["patient_profile_image"] ?>" alt="Patient" width="40">
                               
                                <?php endif ?>

                                <?php if($_SESSION["role"]=="admin"): ?>

                                <span class="user-img"><img class="rounded-circle" src="assets/img/user123.jpg" alt="Admin" width="40">

                                <?php endif ?>

							<span class="status online"></span></span>
                        <span><?php echo($_SESSION["role"]) ?></span>
                    </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="?view=profile">My Profile</a>
						<a class="dropdown-item" href="logout.php">Logout</a>
					</div>
                </li>
            </ul>
            
</div>



<?php


// if($request->hasFile()){

//     $file = $request->file("file_name");

//     $ext = $file->getClientOriginalExtention();
//     $file->stroreAs("ghhshshs.".$ext);
// }