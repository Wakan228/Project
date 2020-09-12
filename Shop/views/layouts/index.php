<?php 
require "../../controllers/database.php";
$site_name = 'main.php';
$bd = new Database();
$link =	$bd->conn();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="../../assets/css/style.css" rel="stylesheet">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<title>Document</title>
</head>
<body>
	<header>
	<div class="container">
		<div class="row">
		<div class="logo_img">
			<img src="" alt="">
		</div>
		<div class="btn_container">
			<div class="row">
				<div class="btn-header">Home</div>
				<div class="btn-header">About Us</div>
				<div class="btn-header">New</div>
			</div>
			</div>
		</div>
	</div>
</header>

	<?php require('../site/'.$site_name);?>

	<footer>
</footer>
</body>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
				<script src="../../assets/js/ajax.js"></script>
</html>