<?php

	include 'db_access.php';
	include 'header.php';
	include 'simplemail.php';
$Rmsg="";
$Lmsg="";
$kmsg="";
if(isset($_POST['action'])){
	if($_POST['action']=="register"){
		$name=(isset($_POST['name']))?mysqli_real_escape_string($db,trim($_POST['name'])):"";
		$mob=(isset($_POST['mob']))?mysqli_real_escape_string($db,trim($_POST['mob'])):"";
		$email=(isset($_POST['email']))?mysqli_real_escape_string($db,trim($_POST['email'])):"";
		$pass=(isset($_POST['pass']))?mysqli_real_escape_string($db,trim($_POST['pass'])):"";
		
		$token=md5(time());
		
		$pass1=md5($pass);
		if(!empty($name) AND  !empty($email) AND !empty($pass)){
			$sql="INSERT INTO customer_table
				(c_fname,token,c_mobno,c_username,c_email,password)
				VALUE
				('$name','$token','$mob','$email','$email','$pass1')";
				
			$res=mysqli_query($db,$sql) or die(mysqli_error($db));
			if($res){
				$ids=mysqli_insert_id($db);
				$Rmsg="okk";
				$msg=new SimpleMail();
				$msg->setToAddress($email);
				$msg->setSubject("Account Verification For Focal.");
				$hb='<html>
						<div style="font-weight:700;"> 
							Hello User,go through the following link provided to verify your email.
						</div>
						<p><a href="verifyacc.php?id='.$ids.'&&token='.$token.'"><b style="color:blue;">Click here to confirm</b></a></p>
						<div style="text-align:center; font-size:25px;font-weight:700; color:darkgreen;">OR</div>
						<p style="font-weight:700;">Copy and paste the below url in your browser:-</p>
						<p style="color:blue; font-size:20px;">
							http://www.focal.co.in/verifyacc.php?id='.$ids.'&&token='.$token.'
						</p>
					</html>';
				$msg->setHTMLBody($hb);
/**/
				if($msg->send()){
					$mail_sent=true;
				}else{
					$kmsg="dssd";
				}

			}
		}
		
	}
	if($_POST['action']=="login"){
		$email=(isset($_POST['email']))?mysqli_real_escape_string($db,trim($_POST['email'])):"";
		$pass=(isset($_POST['pass']))?mysqli_real_escape_string($db,trim($_POST['pass'])):"";
		
		$pass1=md5($pass);
		if(!empty($email) AND !empty($pass)){
			$sql="SELECT 
				c_fname,c_id,verified,c_mobno
				FROM
				customer_table
				WHERE
				c_email='$email' AND password='$pass1'";
				
			$res=mysqli_query($db,$sql) or die(mysqli_error($db));
			if(mysqli_num_rows($res)==1){
				$row=mysqli_fetch_assoc($res);
				if($row['verified']==1){
					$_SESSION['auth']=true;
					$_SESSION['c_fname']=$row['c_fname'];
					$_SESSION['c_id']=$row['c_id'];
					$_SESSION['c_mobno']=$row['c_mobno'];
					if(isset($_POST['checkout_page'])){
						header('Location:checkout.php');
						die();
					}else{
						header('Location:index.php');
						die();
					}
				}else{
					$Lmsg="notokk";
					if(isset($_POST['checkout_page'])){
						$_SESSION['err']=true;
						header('Location:checkout.php');
						die();
					}
				}
			}else{
				$Lmsg="notokk";
				if(isset($_POST['checkout_page'])){
					$_SESSION['err']=true;
					header('Location:checkout.php');
					die();
				}
			}
		}
	}
}
?>
            <div class="content-push">

<?php
	if(!empty($Rmsg)){
		echo '<div class="information-blocks">
				<div class="message-box message-warning">
					<div class="message-icon"><i class="fa fa-exclamation"></i></div>
					<div class="message-text"><b>Alert ! </b> Verify Your account by clicking on the link sent to given email address.</div>
					<div class="message-close"><i class="fa fa-times"></i></div>
				</div>
			</div>';
	}
	if(!empty($kmsg)){
		echo '<div class="information-blocks">
				<div class="message-box message-warning">
					<div class="message-icon"><i class="fa fa-exclamation"></i></div>
					<div class="message-text"><b>Failed ! </b>Failed to mail the confirmation link.Make sure you used a valid email.If the problem persist,feel free to contact admin.we will be happy to help you.</div>
					<div class="message-close"><i class="fa fa-times"></i></div>
				</div>
			</div>';
	}
	if(!empty($Lmsg)){
		echo '<div class="information-blocks">
				<div class="message-box message-warning">
					<div class="message-icon"><i class="fa fa-exclamation"></i></div>
					<div class="message-text"><b>Login Failed!</b> Invalid email address or password. </div>
					<div class="message-close"><i class="fa fa-times"></i></div>
				</div>
			</div>';
	}
	if(isset($_SESSION['err'])){
		echo '<h5 style="font-size:18px;color:red;font-weight:900;text-align:center;">!------------  Verification Failed  ------------!</h5>';
		unset($_SESSION['err']);
	}
	if(isset($_SESSION['success'])){
		echo '<div><div style="font-size:22px;color:green;font-weight:900;text-align:center;">Verification Successful.</div>
			<p style="font-size:18px;font-weight:800;text-align:center;">Now you can login from below.</p>
			</div>';
	}
?>
                <div class="information-blocks">
                    <div class="row">
                        <div class="col-sm-6 information-entry">
                            <div class="login-box">
                                <div class="article-container style-1">
                                    <h3>Login here</h3>
									<p style="color:green;font-weight:900;">You must verify your account by clicking on the verification link sent to your email.</p>
                                 </div>
                                <form method="POST" action="">
                                    <label>Email Address</label>
                                    <input class="simple-field" type="email" name="email" placeholder="Enter Email Address" value="" required/>
                                    <label>Password</label>
                                    <input class="simple-field" type="password" name="pass" placeholder="Enter Password" value="" required/>
                                    <div class="button style-10">Login <input type="submit" name="action" value="login" /></div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-6 information-entry">
                            <div class="login-box">
                                <div class="article-container style-1">
                                    <h3>Register here</h3>
                                    <p>Fill up the below form to create your account on focal.</p>
                                </div>
                                <form method="POST" action="">
                                    <label>Name</label>
                                    <input class="simple-field" type="text" name="name" placeholder="Your Name" value="" required/>
                                    <label>Mobile No</label>
                                    <input class="simple-field" type="text" name="mob" placeholder="Enter Mobile No" value="" required/>
                                    <label>Email Address</label>
                                    <input class="simple-field" type="email" name="email" placeholder="Enter Email Address" value="" required/>
                                    <label>Password</label>
                                    <input class="simple-field" type="password" name="pass" placeholder="Enter Password" value="" required/>
                                    <div class="button style-10">Register<input type="submit" name="action" value="register"/></div>
                                </form>
                            </div>
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