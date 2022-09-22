<?php
function getApts(array $request){

    $query_append="";
    if($_SESSION["role"]=="doctor"){
         $id = $_SESSION["user"][0]["doctor_id"];
         $query_append.=" WHERE doctors.doctor_id=$id";
    }

     if($_SESSION["role"]=="patient"){
         $id = $_SESSION["user"][0]["patient_id"];
         $query_append.=" WHERE patients.patient_id=$id";
     }
     return DB::getConnection()->query("SELECT * FROM appointments 
     join doctors on doctors.doctor_id=appointments.doctor_id 
     join departments on doctors.department_id=departments.department_id 
     join patients on patients.patient_id=appointments.patient_id $query_append")->fetchAll();
}


function getSingleApt(array $request){  

    $id = $request["id"];
    return DB::getConnection()->query("SELECT * FROM appointments 
    join doctors on doctors.doctor_id=appointments.doctor_id 
    join departments on doctors.department_id=departments.department_id 
    join patients on patients.patient_id=appointments.patient_id where appointments.appointment_id='$id'")->fetchAll();
}


function storeApts(array $request){

    $doctor = $request["doctor_id"];
    $patient = $_SESSION["user"][0]["patient_id"];
    $message = $request["message"];
    $date = $request["date"];
    $time = $request["time"];
    
   
    if(!is_null(DB::getConnection())){
        $sql = "INSERT INTO 
         appointments(doctor_id,patient_id,appointment_date,appointment_time,appointment_message)
         values('$doctor','$patient','$date','$time','$message')";
        DB::getConnection()->exec($sql);

        $_SESSION["success"] = "Appointment Made Successfully Successfully";
        
    }

}

function aptAction(array $request){
    $action = $request["action"];
    $id = $request["id"];

    // -----------
    $conn = new mysqli("localhost", "admin", "admin", "hospital");
    $sql = "SELECT patient_id, appointment_date, appointment_time FROM appointments WHERE appointment_id = $id";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $patient1 = $row['patient_id'];
    $sql1 = "SELECT patient_email FROM patients WHERE patient_id = $patient1";
    $result1 = $conn->query($sql);
    $row1 = $result->fetch_assoc();
    $patient2 = $row1['patient_email'];
    // ======

    $query = "UPDATE appointments SET appointment_status=";
    if($action=="approve"){
        
         
        $to = $patient2;
        $subject = "Doctor-connect";
        $txt = "Your appointment has been approved scheduled on ".$row['appointment_date']." at ".$row['appointment_time'];
        $headers = "From: doctorconnectsys05@gmail.com" . "\r\n";

        mail($to,$subject,$txt,$headers);    



        // ----------
        $query .="'approved'";
        $_SESSION["success"] = "Appointment Approved Successfully";
    }
    if($action=="reject"){
        $query .="'rejected'";
         $_SESSION["success"] = "Appointment Rejected Successfully";

         $to = $patient2;
        $subject = "Doctor-connect";
        $txt = "Your appointment has been rejected";
        $headers = "From: doctorconnectsys05@gmail.com" . "\r\n";

        mail($to,$subject,$txt,$headers); 
    }

    if($action=="pend"){
        $query .="'pending'";
         $_SESSION["success"] = "Appointment Pended Successfully";
      }
     $query .=" WHERE appointment_id=$id";
     DB::getConnection()->exec($query);
}

function editApt(array $request){

    $id = $request["id"];
    $doctor = $request["doctor_id"];
    $patient = 1;
    $status = $request["status"];
    $message = $request["message"];
    $date = $request["date"];
    $time = $request["time"];
    
   
    if(!is_null(DB::getConnection())){
        $sql = "UPDATE 
         appointments set
         doctor_id='$doctor',
         patient_id='$patient',
         appointment_status='$status',
         appointment_date='$date',
         appointment_time='$time',
         appointment_message='$message'
         where appointments.appointment_id='$id'
         ";
        DB::getConnection()->exec($sql);
        $_SESSION["success"] = "Appointment Record Updated Successfully";
        
    }

}


function deleteApt(array $request){
    DB::getConnection()->exec("DELETE from appointments where appointment_id=".$request["id"]);
    $_SESSION["success"] = "Appointment Record Deleted Successfully";
}




