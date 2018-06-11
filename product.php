<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$pid=(isset($_GET['pid']))?mysqli_real_escape_string($db,$_GET['pid']):"1";
$pid=intval($pid);

$sql="SELECT 
	p.p_id,p.p_name,p.p_description,p.p_price,p.p_discount,p.p_subcat,p.p_seller_id,p.prod_pic,
	c.cat_id,c.cat_name,pics.pic_url,
	sh.shop_id,sh.shop_name,sh.shop_description
	FROM 
	product p RIGHT JOIN category c ON p.cat_id=c.cat_id 
	LEFT JOIN pics ON p.p_id=pics.p_id 
	LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id 
	WHERE p.p_id=$pid  ";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
$img_arr=array();
$no=1;
while($row=mysqli_fetch_assoc($res)){
	if($no==1){
		$img_arr[]=$row['prod_pic'];
		$p_id=$row['p_id'];
		$p_name=$row['p_name'];
		$p_description=$row['p_description'];
		$p_price=$row['p_price'];
		$p_discount=$row['p_discount'];
		$cat_id=$row['cat_id'];
		$cat_name=$row['cat_name'];
		$shop_id=$row['shop_id'];
		$shop_name=$row['shop_name'];
		$shop_description=$row['shop_description'];
	}else{
		if(!empty($row['pic_url'])){
			$img_arr[]=$row['pic_url'];
		}
	}
	$no++;
}
$p_after_dis=convert($p_price)*(100-$p_discount);		
$p_after_dis=(int)($p_after_dis/100);
?>
            <div class="content-push">


                <div class="information-blocks">
                    <div class="row">
                        <div class="col-sm-6 information-entry">
                            <div class="product-preview-box">
                                <div class="swiper-container product-preview-swiper" data-autoplay="0" data-loop="1" data-speed="500" data-center="0" data-slides-per-view="1">
									<div class="swiper-wrapper">
<?php
$cnt=count($img_arr);
$x=0;
while($cnt>0){
	echo '<div class="swiper-slide">
			<div class="product-zoom-image">
				<img src="'.$img_arr[$x].'" alt="" data-zoom="'.$img_arr[$x].'" />
			</div>
		</div>';
	$cnt--;
	$x++;
}
?>
                                    </div>
                                    <div class="pagination"></div>
 <!-- -->                           <div class="product-zoom-container">
                                        <div class="move-box">
                                            <img class="default-image" src="<?php echo $img_arr[0]; ?>" alt="" />
                                            <img class="zoomed-image" src="<?php echo $img_arr[0]; ?>" alt="" />
                                        </div>
                                        <div class="zoom-area"></div>
                                    </div>	
                                </div>
                                <div class="swiper-hidden-edges">
                                    <div class="swiper-container product-thumbnails-swiper" data-autoplay="0" data-loop="0" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="3" data-int-slides="3" data-sm-slides="3" data-md-slides="4" data-lg-slides="4" data-add-slides="4">
                                        <div class="swiper-wrapper">
<?php
$y=0;
$cnt=count($img_arr);
while($cnt>0){
	if($y==0){
		echo '<div class="swiper-slide selected">
				<div class="paddings-container">
					<img src="'.$img_arr[$y].'" alt="" />
				</div>
			</div>';
	}else{
		echo '<div class="swiper-slide">
				<div class="paddings-container">
					<img src="'.$img_arr[$y].'" alt="" />
				</div>
			</div>';
	}
	$cnt--;
	$y++;
}
?>
                                        </div>
                                        <div class="pagination"></div>
                                    </div>
                                </div>		
                            </div>
                        </div>
                        <div class="col-sm-6 information-entry">
                            <div class="product-detail-box">
                                <h1 class="product-title"><?php echo $p_name; ?></h1>
                                <a class="product-subtitle" href="<?php echo "shop.php?id=$shop_id"; ?>" style="color:#2d5373;font-weight:700;">Shop name:-  <?php echo $shop_name; ?></a>
                                <div class="product-description detail-info-entry"><?php echo $p_description; ?></div>
                                <div class="price detail-info-entry">
                                    <div class="current">Rs <?php echo $p_after_dis; ?></div>
                                </div>
                               <div class="quantity-selector detail-info-entry">
                                    <div class="detail-info-entry-title">Quantity</div>
                                    <div class="entry number-minus">&nbsp;</div>
                                    <div class="entry number">1</div>
                                    <div class="entry number-plus">&nbsp;</div>
                                </div>
                                <div class="detail-info-entry">
                                    <a class="button style-10 add_to_cart_qty" pid="<?php echo $p_id; ?>" >Add to cart</a>
                                    <a class="button style-11 add_to_wishlist" pid="<?php echo $p_id; ?>" ><i class="fa fa-heart"></i> Add to Wishlist</a>
                                    <div class="clear"></div>
                                </div>
                            </div>
							<div class="accordeon">
								<div class="accordeon-title active">Product description</div>
								<div class="accordeon-entry" style="display: block;">
									<div class="article-container style-1">
										<p><?php echo $shop_description; ?></p>
										
									</div>
								</div>
								<div class="accordeon-title">About Product Delivery</div>
								<div class="accordeon-entry">
									<div class="article-container style-1">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit.</p>
										<ul>
											<li>Any Product types that You want - Simple, Configurable</li>
											<li>Downloadable/Digital Products, Virtual Products</li>
											<li>Inventory Management with Backordered items</li>
											<li>Customer Personal Products - upload text for embroidery, monogramming</li>
											<li>Create Store-specific attributes on the fly</li>
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

include 'footerforproduct.php';

?>


<?php

include 'jsscript.php';

?>

