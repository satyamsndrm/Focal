<?php

	include 'db_access.php';
	include 'header.php';
if(isset($_SESSION['auth']) ){
	if($_SESSION['auth']==true){
	}else{
		header('Location:login.php');
	}
}else{
	header('Location:login.php');
}
?>

            <div class="content-push">

                <div class="information-blocks">
					<nav class="navbar navbar-default navlisthead visible-xs">
						<div class="container-fluid">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bars" aria-expanded="false">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<a class="visible-xs navbar-brand" href="home.php">Home</a>
								<a class="visible-xs navbar-brand" href="profile.php?id=">Profile</a>
								<a class="visible-xs navbar-brand" href="event_list.php">Events</a>
							</div>
							
							<div class="collapse navbar-collapse" id="bars">
								<ul class="nav navbar-nav">
									<li> <a href="home.php">Home</a> </li>
									<li> <a href="profile.php?id=">Profile</a></li>
									<li> <a href="societies.php">Societies</a> </li>
									<li> <a href="fests.php">Fests</a> </li>
									<li> <a href="event_list.php">Events</a> </li>
									<li class="dropdown">
										<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">Confessions <span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li><a href="pages.php?id=1" style="color:white;">Confessions</a></li>
											<li><a href="pages.php?id=2" style="color:white;">Trolls</a></li>
										</ul>
									</li>
									<li><a href="sharing.php">Books for sale/share</a></li>
									<li><a href="notes.php">Notes & Papers</a></li>
									<li><a href="videos.php">Videos</a></li>
									<li> <a href="logout.php">Logout</a> </li>
								</ul>
							</div>
						</div>
					</nav>
					<div class="row">
                         <div class="col-sm-3 blog-sidebar hidden-xs">
                            <div class="information-blocks">
                                <div class="categories-list account-links">
                                    <div class="block-title size-3">Client account</div>
                                    <ul>
                                        <li><a href="#" onclick="show_account();">My Account</a></li>
                                        <li><a href="#" onclick="show_wishlist();">Wishlist</a></li>
                                        <li><a href="#" onclick="show_orders();">My Orders</a></li>
                                        <li><a href="#" onclick="edit_account();">Edit Account</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
						<div class="col-sm-9" id="main_body">
<?php
$sql="SELECT 
	c_fname,c_lname,c_mobno,c_username,c_gen,c_email,c_age,c_country
	FROM customer_table 
	WHERE c_id=".$_SESSION['c_id'];

$res=mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_assoc($res)){
	echo '  <div class="information-entry">
				<h3 class="block-title main-heading">Your Details:-</h3>
				<div class="detail-info-lines">
					<div class="share-box">
						<div class="title"><b>Your Name:</b> '.$row['c_fname'].' '.$row['c_lname'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Mob No:</b> '.$row['c_mobno'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Username:</b> '.$row['c_username'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Gender:</b> '.$row['c_gen'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Email:</b> '.$row['c_email'].'</div>
					</div>
				</div>
			</div>';
}


?>                        
						</div>
                       
                    </div>
                </div>


          </div>

        </div>
        <div class="clear"></div>

    </div>

	<!-- FOOTER -->
<?php

	include 'footerforproduct.php';
?>

<?php

	include 'jsscript.php';
?>