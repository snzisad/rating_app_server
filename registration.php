<?php include 'connect.php' ?>
<?php
	$name=($_GET['name']);
	$phone=$_GET['phone'];
	$email=$_GET['email'];
	$job=($_GET['job']);
	$address=($_GET['address']);
	$password=($_GET['password']);

	$numbercheck="select count(user_id) from usertable where phone=\"$phone\" or email=\"$email\"";
	$result=mysqli_query($con,$numbercheck);
	while($row=mysqli_fetch_assoc($result)){
		$count=$row["count(user_id)"];
	}

	if($count==0){
		$sql="INSERT INTO usertable (name,phone,email,job,address,password) VALUES 
              (\"$name\",\"$phone\",\"$email\",\"$job\",\"$address\",\"$password\")";
		$result=mysqli_query($con,$sql);

		if($result){
			$message="Regestration Complete";
			$status="1";	
		}
		else{
			$message="Failed to save data";
			$status="0";
		}

		$out[]=array('message'=>$message,'status'=>$status);

		echo json_encode($out);	
	}
	else{
		$passcheck="select password from usertable where phone=\"$phone\"";
		$result=mysqli_query($con,$passcheck);
		while($row=mysqli_fetch_assoc($result)){
			$pass=$row["password"];
		}
		
		if(empty($pass)){
			$sql="UPDATE usertable SET name=\"$name\",email=\"$email\",job=\"$job\",address=\"$address\",password=\"$password\" WHERE phone=\"$phone\"";
			$result=mysqli_query($con,$sql);

			if($result){
				$message="Regestration Complete";
				$status="1";	
			}
			else{
				$message="Failed to save data";
				$status="0";
			}
			
			$out[]=array('message'=>$message,'status'=>$status);
			echo json_encode($out);	
		}
		else{
			$out[]=array('message'=>"Phone or Email is already registered",'status'=>"2");
			echo json_encode($out);
		}
	}
?>