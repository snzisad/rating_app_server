<?php include 'connect.php' ?>
<?php
	$phone=$_GET['phone'];
	$password=$_GET['password'];

	$sql="select count(user_id) from usertable where (phone=\"$phone\" and password=\"$password\")";
	$result=mysqli_query($con,$sql);

	$data = array();
	while($row=mysqli_fetch_assoc($result)){
		$data[]=$row;
	}

	//$out[]=array('login'=>$data);

	echo json_encode($data);
?>