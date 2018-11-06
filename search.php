<?php
include 'connect.php';

 	$query = $_GET['query'];
     
     $sql="SELECT phone FROM usertable WHERE phone LIKE '".$query."%' LIMIT 5";
	
	$result=mysqli_query($con,$sql);
	$rowCount = 0;

	while($row=mysqli_fetch_assoc($result)){
		$data[]=$row;
		$rowCount++;
	}	
	
	$user = array();
	
	if($rowCount>0){
		echo json_encode($data);
	}
	
	else{	
		echo "no rows";
	}
   
?>