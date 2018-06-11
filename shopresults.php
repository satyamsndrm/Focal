<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$hasShop=false;
$id=(isset($_GET['id']))?mysqli_real_escape_string($db,$_GET['id']):"1";
$id=intval($id);
$sql="SELECT SQL_CALC_FOUND_ROWS
	c.cat_id,c.cat_name,
	sh.shop_id,sh.shop_name,sh.pic,sh.shop_keywords,shop_address,lat,lang,type
	FROM 
	category c LEFT JOIN shop_id sh ON c.cat_id=sh.cat_id
	WHERE
	c.cat_id=$id
	LIMIT 11";
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));

$url="show_shop.php?id=$id";
?>

            <div class="content-push">

		<div class="information-blocks" id="map-wale" style="margin-bottom:22px;">
			<div class="map-box type-2" style="margin-bottom:10px;">
				<div id="map-canvas" data-lat="31.3962" data-lng="75.5354" data-zoom="17"></div>
			</div>
		</div>
			
		<div class="information-blocks" id="map-wale" style="margin-bottom:22px;">
			<div class="" style="text-decoration:underline;text-align:center;margin-bottom:20px;font-size:21px;font-weight:900;">Shops belonging to the searched category</div>
			<div class="portfolio-container type-3">
				<div class="wide-container filter-container">
					<div class="portfolio-entry filtergrid-sizer"></div>
<?php
/*
*/
while($row=mysqli_fetch_array($res)){
	if(!empty($row['shop_name'])){
		$hasShop=true;
	}
	echo '<div class="portfolio-entry filter-item filter-1">
			<div class="image" style="height:300px;">
				<img alt="" src="'.$row['pic'].' "style="height:300px;" />
				<div class="hover-layer">
					<div class="info">
						<div class="title">'.$row['shop_name'].'</div>
						<div class="subtitle">'.$row['shop_keywords'].'</div>
						<div class="actions">
							<a class="action-button open-image" href="#" pic="'.$row['pic'].'"><i class="fa fa-search"></i></a>
							<a class="action-button" href="shop.php?id='.$row['shop_id'].'"><i class="fa fa-link"></i></a>
						</div>
					</div>
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
if((mysqli_num_rows($res)==0) OR !($hasShop) ){
	echo  '<div class="information-blocks show-msg" >
			<div class="row">
			<div class="col-md-6 col-md-push-3 col-sm-12">
				<div class="panel panel-danger">
					<div class="panel-heading msg-heading" style="font-size:24px;font-weight:700;text-align:center;">No Shop</div>
					<div class="panel-body msg-body" style="padding:30px;text-align:center;font-weight:800;">There is no shop belonging to this category.</div>
				</div>
			</div>
			</div>
		</div>';
	echo '<script>
		$(document).ready(function(){
			$("div#map-wale").hide();
		});
	</script>';
	
}
include 'footer.php';

?>


<?php

include 'jsscript.php';

?>
