
        <div class="page-wrapper">
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Appointment</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form method="post" action="actions/action.php">
                            <div class="row">
                                
                            </div>
                            <div class="row">
                               
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Doctor</label>
                                        <select class="select form-control" name="doctor_id">

                                        <?php foreach($doctors as $doctor): ?>
											<option value="<?php echo($doctor["doctor_id"]) ?>"><?php echo($doctor["doctor_first_name"]) ?> <?php echo($doctor["doctor_last_name"]) ?> (<?php echo(round($doctor["rating"])) ?> stars)</option>
                                        
                                        <?php endforeach ?>
											
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" >
                                        <label>Date</label>
                                        <div class="cal-icon">
                                            <input type="date" class="form-control datetimepicker" name="date">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Time</label>
                                        <div class="time-icon">
                                            <input type="time" class="form-control"  name="time">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label>Message</label>
                                <textarea cols="30" rows="4" class="form-control" name="message"></textarea>
                            </div>
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn" name="add_appointment">Create Appointment</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
   