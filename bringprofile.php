<?php

	include "connect.php";
	
	$phone= $_GET['phone'];
     
     $secondSql = "SELECT * FROM usertable WHERE phone ='".$phone."'";
     $secondResult=mysqli_query($con,$secondSql);
     
     $user_id = "";
     
     while($row=mysqli_fetch_assoc($secondResult)){
     	$user_id = $row['user_id'];
     	$name = $row['name'];
     	$phone = $row['phone'];


     }
     
     
     $sql="SELECT COALESCE(usertable.user_id, 0) AS user_id, usertable.name, usertable.phone, usertable.email, usertable.job, usertable.address, COUNT(ratingtable.rater_id) AS total, COALESCE(AVG(ratingtable.cat_one), 0) AS catOne, COALESCE(AVG(ratingtable.cat_two), 0) AS catTwo, COALESCE(AVG(ratingtable.cat_three), 0) AS catThree FROM ratingtable JOIN usertable ON ratingtable.rated_id = usertable.user_id  WHERE usertable.phone ='".$phone."'";
     
	
	$result=mysqli_query($con,$sql);
	$rowCount = 0;
	
	$data= array();

	while($row=mysqli_fetch_assoc($result)){
		array_push($data, array(
			"user_id"=>$user_id,
			"name"=>$name,
			"phone"=>$phone,
			"email"=>$row['email'],
			"job"=>$row['job'],
			"address"=>$row['address'],
			"total"=>$row['total'],
			"catOne"=>round($row['catOne'], 2),
			"catTwo"=>round($row['catTwo'], 2),
			"catThree"=>round($row['catThree'], 2)
			)
		);
	}	
	
	echo json_encode($data);


?>