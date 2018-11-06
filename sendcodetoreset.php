<?php 
	include 'connect.php';
	$code=mt_rand(111111,999999);
	$table='usertable';
	$title="Verify your email address";
	$from="From: Android-Rating-App<noreply@banglasofttech.com>";
?>

<?php
	$email=$_GET['email'];
	
	$numbercheck="select count(user_id) from usertable where (email=\"$email\")";
	$result=mysqli_query($con,$numbercheck);
	while($row=mysqli_fetch_assoc($result)){
		$count=$row["count(user_id)"];
	}
	
	if($count>0){
		$sql="update $table set verification=$code where (email=\"$email\")";
		mysqli_query($con,$sql);
		
		$sql="select name from $table where (email=\"$email\")";
		$result=mysqli_query($con,$sql);
		
		while($row=mysqli_fetch_assoc($result)){
			$name=$row['name'];
		}
		
		$message="
		Hello $name, your email verification code is:
		
			$code
		
		Please use this code to verify your account.
		
		Thanks for using Android Rating App.
		- BanglaSoftTech Team";

    		mail($email,$title,$message,$from);
    		
    		$out[]=array('message'=>"Mail sent successfully",'status'=>"1");
		echo json_encode($out);
	}
	else{
		$out[]=array('message'=>"Email is not registered",'status'=>"2");
		echo json_encode($out);
	}
?>