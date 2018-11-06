<?php 
	include 'connect.php';
	$table='usertable';
?>

<?php
	$email=$_GET['email'];
	$code=$_GET['code'];

	$sql="select verification from $table where (email=\"$email\")";
	$result=mysqli_query($con,$sql);

	while($row=mysqli_fetch_assoc($result)){
		$code2=$row["verification"];
	}

	if($code==$code2){
		$status="1";
		$message="Verification successfull";
		$sql="update $table set verification=1 where (email=\"$email\")";
		mysqli_query($con,$sql);
	}
	else{
		$status="2";
		$message="Invalid verification code";	
	}

	$out[]=array("status"=>$status,"message"=>$message);

	echo json_encode($out);
?>