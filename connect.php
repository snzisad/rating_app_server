<?php
	$con = mysqli_connect("localhost","banglaso_shiblu","ratingpass","banglaso_ratingdb");
	
	mysqli_query ($con, "set character_set_client='utf8'"); 
	mysqli_query ($con, "set character_set_results='utf8'");
	mysqli_query ($con, "set collation_connection='utf8_general_ci'");


?>