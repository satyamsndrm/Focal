<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';
	
?>


            <div class="content-push">

                <div class="row">
                    <div class="col-md-3 sidebar-column">
                        <h3 class="block-title">About Focal</h3>
						<div class="text-widget">
							<img alt="" src="img/text-widget-image-1.jpg" class="image">
							<div class="description">Focal is an ecommerce website where anyone can access shop stores available in one's locality.We aim to list all your local shops in your hand so that on can easily access local stores online / offline.  </div>
							<a class="read-more" href="aboutus.php">Read more <i class="fa fa-angle-right"></i></a>
							<div class="clear"></div>
						</div>
                    </div>
                    <div class="col-md-9">
						<div class="information-blocks">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="navigation-banner-swiper size-1">
                                        <div class="swiper-container" data-autoplay="5000" data-loop="1" data-speed="500" data-center="0" data-slides-per-view="1">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide active" data-val="0"> 
                                                    <div class="navigation-banner-wrapper align-1" style="background-image: url(img/everything-3.jpg); background-color: #f5f1e2;">
                                                        <div class="navigation-banner-content">
                                                            <div class="cell-view">
                                                                <h2 class="subtitle">We are taking orders from now.</h2>
                                                                <h3 class="title" style="font-size:35px;">2:00 pm to 1 1:30 pm</h3>
                                                                <div class="description" style="color:black;">More shops are coming soon </div>
                                                                <div class="info">
                                                                    <a class="button style-1" href="shop_items.php?id=1" style="display:inline;">Shop Now</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide active" data-val="0"> 
                                                    <div class="navigation-banner-wrapper align-1" style="background-image: url(img/everything-1.jpg); background-color: #f5f1e2;">
                                                        <div class="navigation-banner-content">
                                                            <div class="cell-view">
                                                                <h2 class="subtitle">Check out our baker y products</h2>
                                                                <h1 class="title">Bakery</h1>
                                                                <div class="description" style="color:black;">Minimum Order amount 200.</div>
                                                                <div class="info">
                                                                    <a class="button style-1" href="shop_items.php?id=1" style="display:inline;">Shop Now</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                            <div class="pagination"></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			<div class="information-blocks">
				<div class="row">
					<div class="col-md-12">
						<div class="categories">
						<h1 class="block-title" style="margin-bottom:10px;text-align:center;font-weight:900;font-size:22px;">Explore Shops By Category</h3>
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=6">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-book"></i></div>
											<h4 class="clrchg"><a href="">Book Stores</a></h4>
										</div>
									</div>
								</a>
							</div>	
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=1">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-asterisk"></i></div>
											<h4 class="clrchg"><a href="shopresults.php?id=1">Bakery</a></h4>
										</div>
									</div>
								</a>
							</div>	
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=2">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-gamepad"></i></div>
											<h4 class="clrchg"><a href="shopresults.php?id=2">Food </a></h4>
										</div>
									</div>
								</a>
							</div>	
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=5">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-shield"></i></div>
											<h4 class="clrchg"><a href="shopresults.php?id=5">Fashion Stores</a></h4>
										</div>
									</div>
								</a>
							</div>
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=3">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-at"></i></div>
											<h4 class="clrchg"><a href="shopresults.php?id=3">Fruit Stores</a></h4>
										</div>
									</div>
								</a>
							</div>
							<div class="col-md-2 focus-grid">
								<a href="shopresults.php?id=4">
									<div class="focus-border">
										<div class="focus-layout">
											<div class="focus-image"><i class="fa fa-home"></i></div>
											<h4 class="clrchg"><a href="shopresults.php?id=4">Gift Stores</a></h4>
										</div>
									</div>
								</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
 				
                <div class="information-blocks" id="featured-products">
                    <div class="tabs-container">
                        <div class="swiper-tabs tabs-switch">
                            <div class="title">Products</div>
                            <div class="list">
                                <a class="block-title tab-switcher active">Featured Products</a>
                                <a class="block-title tab-switcher">Popular Products</a>
                                <a class="block-title tab-switcher">New Arrivals</a>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div>

<?php

	
$arr=array("Featured","Popular","New Arrivals");

$sql="SELECT 
		p.p_id,p.p_name,p.p_price,p.p_discount,p.p_subcat,p.prod_pic,
		c.cat_name,
		sh.shop_name,sh.shop_id
		FROM
		product p RIGHT JOIN category c ON p.cat_id=c.cat_id
		LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
		WHERE p_subcat IN ('Featured','New Arrivals','Popular')
		ORDER BY p_subcat ASC,p_name";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
if(mysqli_num_rows($res)==0){
	echo '<script>
		$(document).ready(function(){
			$("div#featured-products").hide();
		});
	</script>';

}

$pass1=true;
$pass2=true;

echo '<div class="tabs-entry">
		<div class="products-swiper">
			<div class="swiper-container" data-autoplay="0" data-loop="0" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="2" data-int-slides="2" data-sm-slides="3" data-md-slides="4" data-lg-slides="5" data-add-slides="5">
				<div class="swiper-wrapper">';
while($row=mysqli_fetch_assoc($res)){
	if($row['p_subcat']=="Featured"){
		show_popular_prod($row);
	}elseif($row['p_subcat']=="New Arrivals"){
		if($pass1){
			echo ' </div><div class="pagination"></div></div></div></div>
				<div class="tabs-entry">
					<div class="products-swiper">
						<div class="swiper-container" data-autoplay="0" data-loop="0" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="2" data-int-slides="2" data-sm-slides="3" data-md-slides="4" data-lg-slides="5" data-add-slides="5">
							<div class="swiper-wrapper">';
			$pass1=false;
		}
		show_popular_prod($row);
	}else{
		if($pass2){
			echo ' </div><div class="pagination"></div></div></div></div>
				<div class="tabs-entry">
					<div class="products-swiper">
						<div class="swiper-container" data-autoplay="0" data-loop="0" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="2" data-int-slides="2" data-sm-slides="3" data-md-slides="4" data-lg-slides="5" data-add-slides="5">
							<div class="swiper-wrapper">';
			$pass2=false;
		}
		show_popular_prod($row);
	}
}
	echo ' </div><div class="pagination"></div></div></div></div>';



?>
						</div>
                    </div>
                </div>

<div class="information-blocks home_page_cat">
<h1 class="block-title" style="margin-bottom:10px;text-align:center;font-weight:900;font-size:22px;">Products By Category</h3>
<?php

$sql="( SELECT 
		c.cat_id,c.cat_pic,c.cat_name,p.p_id,p.p_name,p.p_price,p.p_discount,p.p_subcat,p.prod_pic,
		sh.shop_name,sh.shop_id
		FROM 
		product p RIGHT JOIN category c ON p.cat_id=c.cat_id
		LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
		WHERE
		p.p_name !='' AND c.cat_id=1
		ORDER BY c.cat_id
		LIMIT 6 )";
	$strt=2;
	while($strt<=9){
		$sql.="UNION
				( SELECT 
				c.cat_id,c.cat_pic,c.cat_name,p.p_id,p.p_name,p.p_price,p.p_discount,p.p_subcat,p.prod_pic,
				sh.shop_name,sh.shop_id
				FROM 
				product p RIGHT JOIN category c ON p.cat_id=c.cat_id
				LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
				WHERE
				p.p_name !='' AND c.cat_id=$strt
				ORDER BY c.cat_id
				LIMIT 6 )";
		$strt++;
	}
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	$cat=array();
	$cnt=41;
	$cat_going=1;
	while($row=mysqli_fetch_array($res)){
		if(in_array($row['cat_id'],$cat)){
			$arrl=count($cat);
			if($arrl!=0){
				$cat_going=$cat[$arrl-1];
			}else{
				$cat_going=$row['cat_id'];
			}
		}
		if($cat_going!=$row['cat_id']){
			echo '</div><div class="pagination"></div></div></div></div>';
		}
		if(!in_array($row['cat_id'],$cat)){
			$arrl=count($cat);
			if($arrl!=0){
				$cat_going=$cat[$arrl-1];
			}else{
				$cat_going=$row['cat_id'];
			}
			$cat[]=$row['cat_id'];
			echo '<a class="block-title visible-xs" style="text-align:center;font-size:30px;font-weight:800;" href="shopresults.php?id='.$row['cat_id'].'" >'.$row['cat_name'].'</a>
			<div class="products-slider-banner">

			<a style="background-image: url('.$row["cat_pic"].'); background-color: #235290;max-height:300px;" href="shopresults.php?id='.$row['cat_id'].'" class="promo-banner-box hidden-xs" >
				<span class="promo-text">
					<span class="title">'.$row['cat_name'].'</span>
					<span class="detail-link">view products</span>
				</span>
			</a>
			<div class="products-swiper">
				<div class="swiper-container" data-autoplay="0" data-loop="0" data-speed="500" data-center="0" data-slides-per-view="responsive" data-xs-slides="2" data-int-slides="2" data-sm-slides="2" data-md-slides="3" data-lg-slides="4" data-add-slides="5">
					<div class="swiper-wrapper">';
		}
		show_popular_prod($row);
	}
	echo '</div><div class="pagination"></div></div></div></div>';

?>
				
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

