

<?php

	include "connect.php";
	
	$rater_id = $_GET['raterid'];
	$rated_id = $_GET['ratedid'];
     
     $sql="SELECT COALESCE(MAX(time),0)  AS time  FROM ratingtable where rater_id ='".$rater_id."' AND rated_id = '".$rated_id."'";
	
	$result=mysqli_query($con,$sql);
	$rowCount = 0;
	
	$data= array();
	$noData= array();

	while($row=mysqli_fetch_assoc($result)){
	
		if($row['time']=="0"){
			$time = "0";
			
			array_push($data, array(
			"time"=>$time,
			"message"=> "yes"
			)
			);
		}
		else{
		
		$theTime = $row['time'];
		$end = date_create($theTime);
		$start = date_create();
		$stringStart = time();
		$stringEnd = strtotime($theTime)+2592000;
		$strDifference = $stringEnd - $stringStart;
		if($strDifference>=1){
			date_add($end, date_interval_create_from_date_string('29 days, 23 hours'));
			$diff = date_diff($start, $end);
			$hour = $diff->h +1;
			
			$time = $diff->d.' days and '.$hour.' hours';
			
			array_push($data, array(
			"time"=>$time,
			"message"=> "no"
		
				)
			);
			
		}
		
		else{
				array_push($data, array(
				"time"=>$time,
				"message"=> "yes"
		
			)
		);
		
			
			}		
			
		
		}
		
		
	}
	
		echo json_encode($data);
	
		
	
	


?>