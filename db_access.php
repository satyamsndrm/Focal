<?php
ob_start();
session_start();
define('mysqli_HOST','localhost');
define('mysqli_USER','root');
define('mysqli_PASSWORD','');
define('mysqli','focalupl');

$db=mysqli_connect(mysqli_HOST,mysqli_USER,mysqli_PASSWORD) or 
	die('Unable to connect.Check your connection parameters.');
	mysqli_select_db($db,mysqli) or die(mysqli_error($db));
	
//include 'auth.inc.php';	
//include 'header.php';
	$limit=12;
	$page=(isset($_GET['page']))?mysqli_real_escape_string($db,$_GET['page']):1;
	$page=intval($page);
	$page=($page==0)?1:$page;
	$start=($page-1)*$limit;
	
?>