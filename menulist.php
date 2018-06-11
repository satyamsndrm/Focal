<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';

$id=(isset($_GET['id']))?mysqli_real_escape_string($db,trim($_GET['id'])):"5";
$id=intval($id);
$sql="SELECT 
	mid,mname,mprice,
	s.shop_id,shop_name,pic,s.shop_address,s.shop_description,s.shop_category,
	c.cat_name
	FROM 
	menu_list m LEFT JOIN shop_id s ON m.sh_id=s.shop_id
	LEFT JOIN category c ON s.cat_id=c.cat_id
	WHERE
	s.shop_id=$id
	ORDER BY mprice DESC";
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
?>

            <div class="content-push">


<?php
/*	*/
$row=mysqli_fetch_array($res);
$count=mysqli_num_rows($res);
if($row['cat_name']!="Saloon"){
	header('Location:index.php');
}
echo '<div class="information-blocks">
		<div class="row">
			<div class="col-md-6 information-entry">
				<img class="project-thumbnail" src="'.$row['pic'].'" style="max-height:450px;" alt="" />
				<div class="article-container style-1">
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
				</div>
			</div>
			<div class="col-md-5 information-entry">
				<h3 style="padding:10px;text-align:center;border:3px solid #0075ad; background-color:#0075ad;color:white;">Menu Items</h3>
				<table class="table table-bordered order-table">
					<thead><tr><th>S No</th><th>Item Name</th><th>Price (Rs)</th></tr></thead>
					<tbody>';
$i=0;
mysqli_data_seek($res,0);
while($row=mysqli_fetch_array($res)){
	echo '<tr><td>'.++$i.'</td>
			<td>'.$row['mname'].'</td>
			<td>'.$row['mprice'].'</td>
		</tr>';
}
	echo '</tbody>
		</table>
		</div>
		</div>
	</div>';

?>

			</div>
        <div class="clear"></div>

    </div>

<?php

include 'footer.php';
include 'jsscript.php';

?>