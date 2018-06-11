<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$total=0;	
$tbl="";
$i=1;
if(isset($_SESSION['shopping_cart']) AND !empty($_SESSION['shopping_cart'])){
	$cnt=count($_SESSION['shopping_cart']);
	$total=0;
	while($cnt>0){
		$price=convert($_SESSION['shopping_cart'][$cnt-1]['p_price']);
		$item_total=convert($_SESSION['shopping_cart'][$cnt-1]['p_price'])*convert($_SESSION['shopping_cart'][$cnt-1]['p_qty']);
		$total=$total + convert($_SESSION['shopping_cart'][$cnt-1]['p_price']);
		$tbl.= '<tr><td>'.$i++.'</td><td>'.$_SESSION['shopping_cart'][$cnt-1]['p_name'].'</td>
				<td>'.$_SESSION['shopping_cart'][$cnt-1]['p_price'].'</td>
				<td>'.$_SESSION['shopping_cart'][$cnt-1]['p_qty'].'</td>
				<td>'.$item_total.'</td>
			</tr>';
		$cnt--;
	}
	$subtotal=$total*1.06;
}
	$tbl.= "<tr class='bottom'><th></th><th></th><th></th><th>Total</th><th style='color:blue;'>$total</th></tr>";


?>
            <div class="content-push">

                <div class="information-blocks">
                    <div class="row">
                        <div class="col-sm-9 information-entry">
<?php
if(isset($_SESSION['err'])){
		show_error();
	}
?>
							<div class="accordeon size-1">
 

								<div class="accordeon-title active"><span class="number">1</span>Checkout Method</div>
                                <div class="accordeon-entry" style="display: block;">
<?php

if(!(isset($_SESSION['c_id']))){
	
	echo '<div class="row">
			<div class="col-md-6 information-entry">
				<div class="article-container style-1">
					<h3>You must log in to checkout.</h3>
					<h5 style="margin-bottom:3px;">Don\'t have an account ?</h5>
					<p><a class="button style-18" href="login.php" >Register</a> with us for future convenience:</p>                                                
					<ul>
						<li>Fast and easy check out</li>
						<li>Easy access to your order history and status</li>
					</ul>
				</div>
			</div>
			<div class="col-md-6 information-entry">
				<div class="article-container style-1">
					<h3>Login To Continue.</h3>';
				if(isset($_SESSION['err'])){
					echo '<h5 style="font-size:18px;color:red;font-weight:900;text-align:center;">!------------  Login Failed  ------------!</h5>';
					unset($_SESSION['err']);
				}else{
					echo '<div style="color:green;font-weight:900;">Login Here</div>';
				}
				echo '<form method="post" action="login.php">
						<label>Email Address</label>
						<input type="text" name="email" value="" placeholder="Enter Email Address" class="simple-field" required/>
						<label>Password</label>
						<input type="password" name="pass" value="" placeholder="Enter Password" class="simple-field" required/>
						<input type="hidden" name="checkout_page" value="yes">
						<div class="button style-10">Login<input type="submit" name="action" value="login" /></div>
						<a class="forgot-password" href="login.php">Don\'t have an account ?</a>
					</form>
				</div>
			</div>
		</div>';
}else{
	echo '<div class="row">
			<div class="col-md-8 information-entry">
				<div class="article-container style-1">
					<h3>Delivery Information</h3>
					<h5 style="color:green;font-weight:900;">Hello '.$_SESSION['c_fname'].'</h5>
					<p style="">Fill up the delivery address to checkout.</p>
					<p style="font-weight:900;color:black;display:inline;">No delivery for girls hostel after 10:00 pm</p>
					<form method="post" action="checkout_trans.php" onsubmit="check_auth();">
						<label>Street/Hostel</label>
						<input type="text" value="" name="hostel" id="hostel" placeholder="Hostel No Room No" class="simple-field" required/>
						<label>College:-</label>
						<input type="text" name="clg" value="Dr B R Ambedkar National Institute Of Technology" class="simple-field">';
if($total>=150){
					echo '<div class="button style-10">Checkout<input type="submit" name="action" value="submit"></div>';
}else{
	echo '<div class="button style-10">Order amount must be greater than Rs 150.</div>';
}					
				echo '</form>
				</div>
			</div>
		</div>';
}

?>					
					<div class="article-container style-1" style="margin-top:5px;">
						<h3 style="padding:10px;text-align:center;border:3px solid #0075ad; background-color:#0075ad;color:white;">You have ordered:-</h3>
						<table class="table table-bordered order-table">
							<thead><tr><th>S No</th><th>Product Name</th><th>Price</th><th>Quantity</th><th>Total </th></tr></thead>
							<tbody>
<?php
echo $tbl;

?>								  
							</tbody>
						</table>
					</div>
				</div>
		
				<div class="accordeon-title"><span class="number">5</span>Payment Information</div>
				<div class="accordeon-entry">
					<div class="article-container style-1">
						<p>Cash On Delivery.<br>No digital payment now</p>
					</div>
				</div>
				
			
			</div>
	</div>
                        
						
						<div class="col-sm-3 information-entry hidden-xs">
                            <h3 class="cart-column-title size-2">Your Checkout Progress</h3>
                            <div class="checkout-progress-widget">
                                <div class="step-entry">1. Sign In/Login</div>
                                <div class="step-entry">2. Delivery Address</div>
                                <div class="step-entry">3. Hit On Checkout</div>
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

	include 'footer.php';
?>

<?php

	include 'jsscript.php';
?>