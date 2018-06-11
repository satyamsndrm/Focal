<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$success="";	
if(isset($_POST['action']) AND $_POST['action']=='submit'){
	$code=(isset($_POST['code']))?mysqli_real_escape_string($db,$_POST['code']):"";
	$amount=(isset($_POST['amount']))?mysqli_real_escape_string($db,$_POST['amount']):"";
	
	$sql="SELECT 
		shop_id , shop_name
		FROM shop_id 
		WHERE shop_code='$code'";
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	if(mysqli_num_rows($res)>0){
		$row=mysqli_fetch_assoc($res);
		extract($row);
		$amt_to_be_paid=convert($amount)*0.95;
		$success="success";
	}else{
		$success="";
	}
}
?>


<div class="content-push">

	<div class="information-blocks" style="margin-bottom:22px;">
<?php
if(!empty($success)){
	echo '<div class="row">
		<div class="col-md-8 col-md-push-2 col-sm-12">
			<div class="panel panel-primary" style="min-height:250px;">
				<div class="panel-heading" style="font-size:26px;font-weight:700;text-align:center;">Offer code verification successful.</div>
				<div class="panel-body msg-body">
					<div style="font-size:22px;padding:10px;text-align:center;font-weight:800;">Congratulation. Your offer code procees is successful.</div>
					<div style="font-size:24px;padding:10px;text-align:center;font-weight:800;color:blue;text-decoration:underline;">
						<strong style="color:black;text-decoration:none;">Shop Name :- </strong>'.$shop_name.'
					</div>
					<div style="font-size:22px;padding:10px;text-align:center;font-weight:800;">	Amount entered :- 
						<strong style="font-size:32px;color:blue;font-weight:800;text-decoration:underline;">'.$amount.'</strong>
					</div>
					<div style="font-size:22px;padding:10px;text-align:center;font-weight:800;">Discount:- 
						<strong style="font-size:32px;color:blue;font-weight:800;text-decoration:underline;">5%</strong>
					</div>
					<div style="font-size:22px;padding:10px;text-align:center;font-weight:800;">	Payable amount is :- 
						<strong style="font-size:32px;color:blue;font-weight:800;text-decoration:underline;">'.$amt_to_be_paid.'</strong>
					</div>
			</div>
		</div>
		</div>';
	
}else{
?>		
		<div class="row">
			<div class="col-md-offset-3 col-md-6 col-sm-12">
				<h2 class="block-title">Avail Your Offline Offer </h2>
				<p style="font-weight:800;">When visiting shops offline , you can get the offer when shopkeeper verify the transaction by puttin the code. </p><br/>
				<form method="post" action="">
					<label>Shopkeeper's Code</label>
					<input type="text" name="code" value="" placeholder="Shopkeeper must put the code" class="simple-field" required/>
					<label>Amount to be paid ( must be greater than Rs 200 )</label>
					<input type="text" name="amount" value="" placeholder="Enter Amount to be paid" class="simple-field" required/>
					<div class="button style-10">Submit<input type="submit" name="action" value="submit" /></div>
				</form>
			
			</div>
		
		</div>
<?php

	}

?>	
	</div>


</div>
        </div>
        <div class="clear"></div>

    </div>

<?php

include 'footer.php';
include 'jsscript.php';

?>