<?php

	include "connect.php";
	
	$raterid = $_GET['raterid'];
	$ratedid = $_GET['ratedid'];
	$catOne = $_GET['catOne'];
	$catTwo = $_GET['catTwo'];
	$catThree = $_GET['catThree'];
	$comment = $_GET['comment'];
	
	 $data = array();
	
	
     
     $sql= "INSERT INTO ratingtable(rater_id, rated_id, cat_One, cat_two, cat_three, comment) VALUES(\"$raterid\", \"$ratedid\", \"$catOne\", \"$catTwo\", \"$catThree\", \"$comment\")";

	$result=mysqli_query($con,$sql);
     
     $data = array();
     
			if($result){
				array_push($data, array(
			"message"=> "yes"
			)
			);

			}
			
			else{
			
				array_push($data, array(
			"message"=> "no"
			)
			);
			}
 
     
     echo json_encode($data);
     

?>