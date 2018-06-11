<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';
	include 'sendmsg.php';
$i=1;
/*	*/
$dt=date('Y-m-d H:i:s');
if(isset($_POST['action'])){
	$d_address=(isset($_POST['hostel']))?mysqli_real_escape_string($db,$_POST['hostel']):"";
	$shop_list=array();
	if(isset($_SESSION['shopping_cart']) AND !empty($_SESSION['shopping_cart'])){
		$sql="INSERT INTO order_table
			(o_id,c_id,d_order_placed)
			VALUES
			(NULL,".$_SESSION['c_id'].",'$dt')";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));//
		
		$o_id=mysqli_insert_id($db);
		
		$sql2="INSERT INTO order_items
			(p_id,o_id,o_status_code,o_item_price,o_qty,o_other_details)
			VALUES ";

		$cnt=count($_SESSION['shopping_cart']);
		$total=0;
		while($cnt>0){
			$price=convert($_SESSION['shopping_cart'][$cnt-1]['p_price']);
			$item_total=convert($_SESSION['shopping_cart'][$cnt-1]['p_price'])*convert($_SESSION['shopping_cart'][$cnt-1]['p_qty']);
			$total=$total + convert($_SESSION['shopping_cart'][$cnt-1]['p_price']);
			$pid=$_SESSION['shopping_cart'][$cnt-1]['p_id'];
			$qty=$_SESSION['shopping_cart'][$cnt-1]['p_qty'];
			$sql2.="($pid,$o_id,'1','$price',$qty,'Total price is $item_total')";
			if($cnt>1){
				$sql2.=",";
			}
			if(!(in_array($_SESSION['shopping_cart'][$cnt-1]['sh_id'],$shop_list))){
				$shop_list[]=$_SESSION['shopping_cart'][$cnt-1]['sh_id'];
			}
			$cnt--;
		}
		$cnt1=count($shop_list);
		$total1=0;
		while($cnt1>0){
			$shopid=$shop_list[$cnt1-1];
			if($_SESSION['shopping_cart'][$cnt1-1]['sh_id']==$shopid){
				
				
			}
			$cnt1--;
		}
		
		
		$res=mysqli_query($db,$sql2) or die(mysqli_error($db));
		
		$sql3="UPDATE order_table
			SET order_details='Total price is $total'
			WHERE o_id=$o_id";
		$res=mysqli_query($db,$sql3) or die(mysqli_error($db));
		
	}
}else{
	header('Location:cart.php');
	die();
}
?>
<div id="content-push">
	<div class="information-blocks show-msg" style="margin-bottom:77px;">
		<div class="row">
		<div class="col-md-8 col-md-push-2 col-sm-12">
			<div class="panel panel-primary" style="min-height:250px;">
				<div class="panel-heading" style="font-size:26px;font-weight:700;text-align:center;">Order Received</div>
				<div class="panel-body msg-body">
					<div style="font-size:22px;padding:10px;text-align:center;font-weight:800;">Your orders will be delivered soon.</div>
					<div>
						<ul class="chkout-list" style="padding:10px;text-align:center;font-weight:800;">
							<li>Near by restraunts will deliver your order within 30 minutes.</li>
							<li>Shops in city will deliver your order about 6:00 pm.</li>
							<li>Orders before 4:00 pm will be deliverd on the same day.</li>
							<li>Orders after 4:00 pm will be processes on the next day.</li>
							
						</ul>
					</div>
				</div>
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
	$item_lists=array();
	if(isset($_SESSION['shopping_cart'])){
		$cnt1=count($_SESSION['shopping_cart']);
		$total1=0;
		while($cnt1>0){
			$shopID=$_SESSION['shopping_cart'][$cnt1-1]['sh_id'];
			$item_details=array(
							"name"=>$_SESSION['shopping_cart'][$cnt1-1]['p_name'],
							"qty"=>$_SESSION['shopping_cart'][$cnt1-1]['p_qty'],
							"price"=>$_SESSION['shopping_cart'][$cnt1-1]['p_price'],
							"mob_no"=>$_SESSION['shopping_cart'][$cnt1-1]['mob_no']
						);
			if(array_key_exists($shopID,$item_lists)){
				$count=count($item_lists[$shopID]);
				$item_lists[$shopID][$count]=$item_details;
			}else{
				$item_lists[$shopID][]=$item_details;
				
			}
			$cnt1--;
		}
	} 
	
	echo '<pre>';
//	print_r($shop_list);
	echo '</pre>';
	
	$count1=count($shop_list);
	$mob_no="";
	$sending="";
	while($count1>0){
		$shopid=$shop_list[$count1-1];
		$cnt=count($item_lists[$shopid]);
		$sending='ORDER NO:-'.$o_id."\r\n";
		$sending.='Customer Mob.No:-'.$_SESSION['c_mobno']."\r\n";
		while($cnt>0){
			$mob_no=$item_lists[$shopid][$cnt-1]['mob_no'];
			$sending.="Item :".$item_lists[$shopid][$cnt-1]['name']."\r\n".
					" Qty :".$item_lists[$shopid][$cnt-1]['qty']." (Kg/Piece)"."\r\n".
					" Price :".$item_lists[$shopid][$cnt-1]['price']."\r\n";
			$cnt--;
		}
		$sending.="Delivery Address:-".$d_address;
		$message=urlencode($sending);
		sendmsg($mob_no,$sending);
		echo nl2br($sending).'<br>';
		
		$count1--;
	}
	
	
	include 'footerforproduct.php';
?>


<?php

	include 'jsscript.php';
?>