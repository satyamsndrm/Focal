<?php

include 'db_access.php';
include 'header.php';
include 'output_fun.php';
$noitem=false;
?>
            <div class="content-push">


                <div class="information-blocks" id="cart-showbox">
                    <div class="row">
                        <div class="col-sm-9 information-entry">
                            <h3 class="cart-column-title size-1">Products</h3>
 <?php
 /*
*/
if(isset($_SESSION['shopping_cart']) AND !empty($_SESSION['shopping_cart'])){
	$cnt=count($_SESSION['shopping_cart']);
	echo $cnt;
	$total=0;
	while($cnt>0){
		$price=convert($_SESSION['shopping_cart'][$cnt-1]['p_price']);
		$total=$total + convert($_SESSION['shopping_cart'][$cnt-1]['p_price'])*convert($_SESSION['shopping_cart'][$cnt-1]['p_qty']);
		echo '<div class="traditional-cart-entry style-1">
				<a class="image" href="#"><img alt="" src="'.$_SESSION['shopping_cart'][$cnt-1]['pic_url'].'"></a>
				<div class="content">
					<div class="cell-view">
						<a class="title" href="#">'.$_SESSION['shopping_cart'][$cnt-1]['p_name'].'</a>
						<div class="price">
							<div class="current">Rs '.after_discount($price , $_SESSION['shopping_cart'][$cnt-1]['p_discount']).'</div>
						</div>
						<div class="quantity-selector detail-info-entry">
							<div class="detail-info-entry-title">Quantity</div>
							<div class="entry number-minus">&nbsp;</div>
							<div class="entry number">'.intval($_SESSION['shopping_cart'][$cnt-1]['p_qty']).'</div>
							<div class="entry number-plus">&nbsp;</div>
							<a class="button style-17 cart_remove" style="display:inline;" pid="'.$_SESSION['shopping_cart'][$cnt-1]['p_id'].'" >remove</a>
							<a class="button style-15 cart_update" style="display:inline;" pid="'.$_SESSION['shopping_cart'][$cnt-1]['p_id'].'" >Update Cart</a>
						</div>
					</div>
				</div>
			</div>';
		$cnt--;
	}
	$subtotal=$total*1.06;
}else{
	$noitem=true;
	echo '<script>
		$(document).ready(function(){
			$("div#cart-showbox").hide();
		});
	</script>';
}

?>
                     </div>
                        <div class="col-sm-3 information-entry">
                            <h3 class="cart-column-title size-1" style="text-align: center;">Subtotal</h3>
                            <div class="sidebar-subtotal">
                                <div class="price-data">
                                    <div class="main">Rs <?php echo $total; ?></div>
                                    <div class="title">Excluding tax &amp; shipping</div>
                                    <div class="subtitle">ORDERS WILL BE PROCESSED IN Rs</div>
                                </div>
								<div class="additional-data">
									<a class="button style-10" href="checkout.php">Checkout</a>
									<div class="block-title size-1">Open For NITJ only.</div>
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
if($noitem){
	echo  '<div class="information-blocks show-msg" >
			<div class="row">
			<div class="col-md-6 col-md-push-3 col-sm-12">
				<div class="panel panel-danger">
					<div class="panel-heading msg-heading" style="font-size:24px;font-weight:700;text-align:center;">No items in cart</div>
					<div class="panel-body msg-body" style="padding:30px;text-align:center;font-weight:800;">You have not added any product in the cart.</div>
				</div>
			</div>
			</div>
		</div>';

}
	include 'footer.php';
?>


<?php

	include 'jsscript.php';
?>