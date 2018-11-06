<?php 
	include 'connect.php';
	$table='usertable';
	$serveraddress='http://banglasofttech.com/rating/'
?>

<?php
	if($_SERVER['REQUEST_METHOD']=='POST'){	
		$image = $_POST['image'];
       		$phone = $_POST['phone'];
     		$password = $_POST['password'];

		$path = "profile_picture/"."$phone.png";		
		$actualpath = $serveraddress."$path";
		
		$sql = "UPDATE $table SET picturepath=\"$actualpath\" WHERE (phone=\"$phone\" and password=\"$password\")";
		
		if(mysqli_query($con,$sql)){
			file_put_contents($path,base64_decode($image));
			echo "Successfully Uploaded";
		}
		mysqli_close($con);
	}
	else{
		echo "Error";
	}
?>