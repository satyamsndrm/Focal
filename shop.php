<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$id=(isset($_GET['id']))?mysqli_real_escape_string($db,trim($_GET['id'])):"1";
$sql="SELECT 
	s.shop_id,shop_name,pic,shop_address,shop_description,shop_category,shop_keywords,
	c.cat_name,
	pic_url,d_upl
	FROM 
	shop_id s LEFT JOIN shop_store_pics_album sh ON s.shop_id = sh.shop_id
	LEFT JOIN category c ON s.cat_id=c.cat_id
	WHERE
	s.shop_id=$id
	ORDER BY d_upl DESC";
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	
?>

            <div class="content-push">


<?php

$row=mysqli_fetch_array($res);

echo '<div class="information-blocks">
		<div class="row">
			<div class="col-md-6 information-entry">
				<img class="project-thumbnail" src="'.$row['pic'].'" style="max-height:450px;" alt="" />
			</div>
			<div class="col-md-5 information-entry">
				<h3 class="block-title main-heading" href="shop.php?id='.$row['shop_id'].'">'.$row['shop_name'].'</h3>
				<div class="article-container style-1">
					<a href="shop_items.php?id='.$row['shop_id'].'" class="button style-4">View Products of this shop</a>
					<h4>SHOP DESCRIPTION</h4>
					<p>'.$row['shop_description'].'</p>
				</div>
				<div class="detail-info-lines">
					<div class="share-box">
						<div class="title"><b>Address:</b> '.$row['shop_address'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Category:</b> '.$row['shop_category'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Keywords:</b>'.$row['shop_keywords'].'</div>
					</div>
				</div>
			</div>
		</div>
	</div>';

?>

                <div class="information-blocks" style="margin-bottom:22px;">
                    <div class="portfolio-container type-2">
                        <h3 class="block-title">Shop Store Pics</h3>
                        <div class="wide-container filter-container">
                            <div class="portfolio-entry filtergrid-sizer"></div>
							
<?php 
$filter=array("filter-1","filter-2","filter-3","filter-4");
mysqli_data_seek($res,0);
$store_pic_posted=false;

while($row=mysqli_fetch_array($res)){
	echo '<div class="portfolio-entry filter-item filter-1">
			<div class="image">
				<img alt="" src="'.$row['pic_url'].'" />
				<div class="hover-layer">
					<div class="info">
						<div class="title">'.$row['shop_name'].'</div>
						<div class="subtitle">'.$row['shop_keywords'].'</div>
						<div class="actions">
							<a class="action-button open-image" href="#" pic="'.$row['pic'].'"><i class="fa fa-search"></i></a>
							<a class="action-button" href="#"><i class="fa fa-link"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>';
	if(!empty($row['pic_url'])){
		$store_pic_posted=true;
	}
}


?>
                        </div>
                    </div>
<?php 

if(!$store_pic_posted){
	echo '<b style="font-weight:900;">No pics of this store.</b>';
}
?>
					
                </div>
           
<?php
if((isset($_SESSION['auth']))){
	echo '<div class="information-blocks shop_comments" id="'.$id.'" >	
	</div>';
}
?>
		   
			
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
