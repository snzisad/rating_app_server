<?php

	include "connect.php";
	
	$raterid= $_GET['raterid'];
     
          
     
   	$sql= "SELECT usertable.user_id AS id,usertable.name AS name, usertable.phone AS phone, ratingtable.cat_one AS catOne, ratingtable.cat_two AS catTwo, ratingtable.cat_three as catThree FROM ratingtable JOIN usertable ON ratingtable.rated_id = usertable.user_id WHERE ratingtable.rater_id ='".$raterid."'";
     
	
	$result=mysqli_query($con,$sql);
	
	$data= array();

	while($row=mysqli_fetch_assoc($result)){
		array_push($data, array(
		
			"id"=>$row['id'],			
			"name"=>$row['name'],
			"phone"=>$row['phone'],
			"catOne"=>$row['catOne'],
			"catTwo"=>$row['catTwo'],
			"catThree"=>$row['catThree']
			)
		);
	}	
	
	echo json_encode($data);


?>