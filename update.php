<?php include 'connect.php' ?>
<?php
	$name=($_GET['name']);
	$phone=($_GET['phone']);
	$job=($_GET['job']);
	$address=($_GET['address']);
	
	$sql="UPDATE usertable SET name=\"$name\", job=\"$job\", address=\"$address\"  WHERE phone=\"$phone\" ";
	$result=mysqli_query($con,$sql);

	if($result){
		$message="Update Successfull";
		$status="1";	
	}
	else{
		$message="Failed to save data";
		$status="0";
	}

	$out[]=array('message'=>$message,'status'=>$status);

	echo json_encode($out);	
?>
