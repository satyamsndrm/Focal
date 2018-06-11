<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no, minimal-ui"/>
	<meta name="description" content="Focal is an ecommerce website where consumer can find shops and items in your locality and can avail great discounts.">
	<meta name="keywords" content="Focal,focal.co.in,focal.com,hyperlocal,hyperlocal delivery,nitj,Dr B R Ambedkar National Institute Of Technology">
	<meta name="author" content="Satyam Sundaram">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/idangerous.swiper.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700%7CDancing+Script%7CMontserrat:400,700%7CMerriweather:400,300italic%7CLato:400,700,900' rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/stylenew.css" rel="stylesheet" type="text/css" />
	<!--[if IE 9]>
    
        <link href="css/ie9.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <link rel="shortcut icon" href="img/logon.png" />
	<style>
		#menu-table{
			border:4px solid;
		}
		#menu-table th{
			border:2px solid ;
			font-size:20px;
			font-weight:700;
			color:;
			text-align:center;
		}
		#menu-table tr td{
			border:2px solid ;
			font-size:17px;
			color:;
			text-align:center;
		}
		table.order-table > thead > th {
			padding:22px;
			vertical-align:center;
		}
		.order-table th{
			font-weight:900;
			font-size:2;
			color:black;
		}
		.order-table td{
			color:black;
		}
		tr.bottom th{
			font-size:20px;
			font-weight:700;
			color:black;
			color:blue;
		}
		.chkout-list li{
			padding:3px;
			font-size:18px;
		}
	</style>
  	<title>Focal</title>
	<script src="js/jquery-2.1.3.min.js"></script>	
	<script>
	
	function check_auth(){
		var hostel=$("#hostel").val();
		var clg=$("#clg").val();
		if(hostel!='' && clg!=''){
			return true;
		}else{
			event.preventDefault();
			return false;
		}
	}
	function show_account(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{show_account:1},
			success	:	function(data){
				$("div#main_body").html(data);
				
			}});
	}
	
	function show_wishlist(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{show_wishlist:1},
			success	:	function(data){
				$("div#main_body").html(data);
				
			}});
	}

	function show_orders(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{show_orders:1},
			success	:	function(data){
				$("div#main_body").html(data);
				
			}});
	}
	
	function edit_account(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{edit_account:1},
			success	:	function(data){
				$("div#main_body").html(data);
				
			}});
	}
	</script>
	
</head>
<body class="style-3">

    <div id="content-block">

        <div class="wide-center fixed-header-margin">
           <!--  HEADER -->
            <div class="header-wrapper style-3">
                <header class="type-1">
                    <div class="header-top">
                        <div class="header-top-entry">
                            <div class="title"><b>Currency:</b> Rs</div>
                        </div>
                        <div class="header-top-entry hidden-xs">
                            <div class="title"><i class="fa fa-phone"></i>Any question? Call Us <a href="tel:8437779754"><b>8437779754</b></a></div>
                        </div>
                        <div class="socials-box">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                        <div class="menu-button responsive-menu-toggle-class"><i class="fa fa-reorder"></i></div>
                        <div class="clear"></div>
                    </div>

                    <div class="header-middle">
                        <div class="logo-wrapper">
                            <a id="logo" href="index.php"><img src="img/logon.png" alt="" /></a>
                        </div>

                        <div class="middle-entry">
                            <div class="search-box">
                                <form action="product_search.php" method="get">
                                    <div class="search-button">
                                        <i class="fa fa-search"></i>
                                        <input type="submit" />
                                    </div>
                                    <div class="search-field">
                                        <input type="text" name="src" value="" placeholder="Search for product/shop" />
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="right-entries">
                            <a class="header-functionality-entry" href="offercode.php"><i class="fa fa-gift"></i><span>Offer</span></a>
                            <a class="header-functionality-entry open-search-popup" href="#"><i class="fa fa-search"></i><span>Search</span></a>
<?php 
if(isset($_SESSION['auth'])){
	if($_SESSION['auth']==true){							
		echo '<a class="header-functionality-entry" href="logout.php"><i class="fa fa-user"></i><span>Logout</span></a>';
	}else{
		echo '<a class="header-functionality-entry" href="login.php"><i class="fa fa-user"></i><span>Login</span></a>';
	}
}else{
		echo '<a class="header-functionality-entry" href="login.php"><i class="fa fa-user"></i><span>Login</span></a>';
}				
?>							<a class="header-functionality-entry open-cart-popup" href="cart.php"><i class="fa fa-shopping-cart"></i><span>My Cart </span> <b><?php if(isset($_SESSION['shopping_cart'])){ echo count($_SESSION['shopping_cart']); }else{ echo 0;}    ?></b></a>
                        </div>

                    </div>

                    <div class="close-header-layer"></div>
                    <div class="navigation">
                        <div class="navigation-header responsive-menu-toggle-class">
                            <div class="title">Navigation</div>
                            <div class="close-menu"></div>
                        </div>
                        <div class="nav-overflow">
                           <nav>
                                <ul>
									<li><a href="index.php">Home</a></li>
									<li><a href="shopbycategory.php">Find Shops</a></li>
									<li><a href="shop_items.php?id=1">Bakery Items</a></li>
									<li><a href="shopresults.php?id=2">Foods & restaraunt</a></li>
									<li><a href="menulist.php?id=5">Offline Saloon Services</a></li>
									<li class="fixed-header-visible">
                                        <a class="fixed-header-square-button open-cart-popup"><i class="fa fa-shopping-cart"></i></a>
                                        <a class="fixed-header-square-button open-search-popup"><i class="fa fa-search"></i></a>
                                    </li>
                                </ul>

                                <div class="clear"></div>

                                <a class="fixed-header-visible additional-header-logo"><img src="img/losdfs.png" alt=""/></a>
                            </nav>
                            <div class="navigation-footer responsive-menu-toggle-class">
                                <div class="socials-box">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="navigation-copyright">Created by <a href="#">Satyam</a>. All rights reserved</div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="clear"></div>
            </div>

	
