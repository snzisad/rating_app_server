<?php 
	include 'connect.php';
	$table='usertable';
?>

<?php
	$email=$_GET['email'];
	$pass=$_GET['password'];
	
	$sql="update $table set password=$pass where (email=\"$email\")";
	
	if(mysqli_query($con,$sql)){
		$sql="select phone from $table where (email=\"$email\")";
		$result=mysqli_query($con,$sql);

		while($row=mysqli_fetch_assoc($result)){
			$phone=$row['phone'];
		}
	
		$out[]=array('message'=>"Password Changed Successsfully","phone"=>$phone,'status'=>"1");
		echo json_encode($out);
	}
	else{
		$out[]=array('message'=>"Password Changing Failed",'status'=>"2");
		echo json_encode($out);
	}
		
?>