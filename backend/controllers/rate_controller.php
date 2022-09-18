<?php
function getRatings(){  
     return DB::getConnection()->query("SELECT * FROM ratings")->fetchAll();
}


function storeRating(array $request){

    $value= $request["value"];
    $doctor = $request["doctor_id"];
    $patient = $request["patient_id"];
    
   
    if(!is_null(DB::getConnection())){
        
        $sql = "INSERT INTO 
         ratings(doctor_id,patient_id,rating_value)
         values('$doctor','$patient','$value')";
        DB::getConnection()->exec($sql);
        print_r([
            "message"=>"success"
        ]);
    }

}







