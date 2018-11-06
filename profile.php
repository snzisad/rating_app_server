<?php include 'connect.php' ?>
<?php
	$phone=$_GET['phone'];
	$password=$_GET['password'];

	$sql="select * from usertable where (phone=\"$phone\" and password=\"$password\")";
	$result=mysqli_query($con,$sql);

	while($row=mysqli_fetch_assoc($result)){
		$count[]=$row;
	}	

	echo json_encode($count);

?>