<?php 
	include 'connect.php';
	$table='profilepicture';
?>

<?php

	if($_SERVER['REQUEST_METHOD']=='POST'){
		$image = $_POST['image'];
        	$name = $_POST['name'];

		$sql ="SELECT id FROM $table ORDER BY id ASC";
		
		$res = mysqli_query($con,$sql);
		
		$id = 0;
		
		while($row = mysqli_fetch_array($res)){
				$id = $row['id'];
		}
		
		$path = "images/$id.png";
		
		$actualpath = "http://banglasofttech.com/rating/$path";
		
		$sql = "INSERT INTO $table (url,name) VALUES ('$actualpath','$name')";
		
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