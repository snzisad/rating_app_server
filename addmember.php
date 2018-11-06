<?php include 'connect.php' ?>
<?php
	$name=($_GET['name']);
	$phone=$_GET['phone'];
	$comment=$_GET['comment'];

	$numbercheck="select count(user_id) from usertable where phone=\"$phone\"";
	$result=mysqli_query($con,$numbercheck);
	while($row=mysqli_fetch_assoc($result)){
		$count=$row["count(user_id)"];
	}

	if($count==0){
		$sql="INSERT INTO usertable (name,phone,comment) VALUES 
              (\"$name\",\"$phone\",\"$comment\")";
		$result=mysqli_query($con,$sql);

		if($result){
			$message="Successfully Added";
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
		$out[]=array('message'=>"Phone is already registered",'status'=>"2");
		echo json_encode($out);
	}
?>