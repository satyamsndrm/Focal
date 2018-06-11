<?php

include 'db_access.php';

if(isset($_GET['id']) AND isset($_GET['token'])){
	$id=intval($_GET['id']);
	$token=$_GET['token'];
	
	$sql=" UPDATE customer_table 
		SET verified=1
		WHERE id=$id AND token=$token ";
	$res=mysqli_query($db,$sql);
	if($res){
		$_SESSION['success']="Successful";
		header('Location:login.php');
	}else{
		$_SESSION['err']="Successful";
		header('Location:login.php');
	}
}