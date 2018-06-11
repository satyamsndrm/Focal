<?php

	include 'db_access.php';
	include 'header.php';


if(isset($_POST['contact_us'])){
	$fname=(isset($_POST['fname']))?mysqli_real_escape_string($db,trim($_POST['fname'])):"";
	$lname=(isset($_POST['lname']))?mysqli_real_escape_string($db,trim($_POST['lname'])):"";
	$email=(isset($_POST['email']))?mysqli_real_escape_string($db,trim($_POST['email'])):"";
	$msg=(isset($_POST['message']))?mysqli_real_escape_string($db,trim($_POST['message'])):"";
	$dt=date('Y-m-d H:i:s');
	if(!empty($email) AND !empty($fname)){
		$sql="INSERT INTO contact_msg
			(id,fname,lname,email,message,d_upl)
			VALUES
			(NULL,'$fname','$lname','$email','$msg','$dt')";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	}else{
		die();
	}
}
?>	
			<div class="content-push">

                <div class="contact-spacer"></div>

                <div class="information-blocks">
                    <div class="row">
                        <div class="col-sm-6 information-entry">
                            <h3 class="block-title main-heading">Drop Us A Line</h3>
                            <form method="post" action="">
                                <label>Your Name <span>*</span></label>
                                <input class="simple-field" type="text" name="fname" placeholder="Your name (required)" required value="" />
                                <label>Your Surname</label>
                                <input class="simple-field" type="text" name="lname" placeholder="Your surname" value="" />
                                <label>Your Email <span>*</span></label>
                                <input class="simple-field" type="email" name="email" placeholder="Your email address (required)" required value="" />
                                <label>Your Message <span>*</span></label>
                                <textarea class="simple-field" name="message" placeholder="Your message content (required)" required></textarea>
                                <div class="button style-10">Send Message<input type="submit" name="contact_us" value="" /></div>
                            </form>
						
                            <div class="share-box detail-info-entry">
                                <div class="title">Share in social media</div>
                                <div class="socials-box">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="col-sm-6 information-entry">
                            <h3 class="block-title main-heading">Let's Stay In Touch</h3>
                            <div class="article-container style-1">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                <h5>Company address</h5>
                                <p>8808 Ave Dermentum, Onsectetur Adipiscing<br/>
                                Tortor Sagittis, CA 880986,<br/>
                                United States<br/>
                                CA 90896<br/> 
                                United States<br/></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- <div class="information-blocks">
                    <div class="map-box type-2">
                        <div id="map-canvas" data-lat="48.8579353" data-lng="2.2953856" data-zoom="17"></div>
                        <div class="addresses-block">
                            <a data-lat="48.8579353" data-lng="2.2953856" data-string="1. Here is some address or email or phone or something else..."></a>
                            <a data-lat="48.8583694" data-lng="2.2960132" data-string="2. Here is some address or email or phone or something else..."></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 information-entry">
                            <h3 class="block-title main-heading">Let's Stay In Touch</h3>
                            <div class="article-container style-1">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
                                <h5>Company address</h5>
                                <p>8808 Ave Dermentum, Onsectetur Adipiscing<br/>
                                Tortor Sagittis, CA 880986,<br/>
                                United States<br/>
                                CA 90896<br/> 
                                United States<br/></p>
                                <h5>Contact Informations</h5>
                                <p>Email: stores@domain.com<br/>
                                Toll-free: (1800) 000 8808</p>
                            </div>
                            <div class="share-box detail-info-entry">
                                <div class="title">Share in social media</div>
                                <div class="socials-box">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="col-md-8 information-entry">
                            <h3 class="block-title main-heading">Drop Us A Line</h3>
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Your Name <span>*</span></label>
                                        <input class="simple-field" type="text" placeholder="Your name (required)" value="" />
                                        <div class="clear"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Your Surname</label>
                                        <input class="simple-field" type="text" placeholder="Your surname" value="" />
                                        <div class="clear"></div>
                                    </div>
                                    <div class="col-sm-12">
                                        <label>Your Email <span>*</span></label>
                                        <input class="simple-field" type="text" placeholder="Your email address (required)" value="" />
                                        <label>Your Message <span>*</span></label>
                                        <textarea class="simple-field" placeholder="Your message content (required)"></textarea>
                                        <a class="button style-10">Send Message<input type="submit" value="" /></a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> -->
                


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
