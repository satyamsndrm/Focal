<?php

	include 'db_access.php';
	include 'header.php';
	include 'output_fun.php';
	
$src='';
$id=(isset($_GET['id']))?mysqli_real_escape_string($db,$_GET['id']):"1";
$id=intval($id);
$price='';
?>
            <div class="content-push" >

<div id="current-page" page="<?php echo $page; ?>"></div>
                <div class="information-blocks">
                    <div class="row">
                        <div class="col-md-12 col-sm-8">
						<div class="page-selector">

							<div class="shop-grid-controls">
								<div class="entry">
									<div class="inline-text">Sorty by</div>
									<div class="simple-drop-down">
										<select id="sortingRes">
											<option>Name</option>
											<option>Price</option>
											<option>Category</option>
										</select>
									</div>
									<div class="sort-button" id="dec" srcid="<?php echo $id; ?>"></div>
								</div>
								<div class="entry hidden-xs">
									<div class="view-button active grid"><i class="fa fa-th"></i></div>
								</div>
								<div class="entry hidden-xs">
									<div class="inline-text">Showing</div>
									<div class="simple-drop-down" style="width: 75px;">
										<select>
											<option>12</option>
										</select>
									</div>
									<div class="inline-text">per page</div>
								</div>
							</div>
                                <div class="clear"></div>
						</div>
                            <div class="row shop-grid grid-view">
<?php
$href="shop_items.php?id=$id&page=";

$sql="SELECT SQL_CALC_FOUND_ROWS
	p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
	c.cat_name,c.cat_keywords,
	sh.shop_id,sh.shop_name
	FROM
	product p LEFT JOIN category c ON c.cat_id=p.p_id
	LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id 
	WHERE
	sh.shop_id=$id 
	ORDER BY p_name DESC
	LIMIT $start , $limit ";	
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_assoc($res)){
	$price = convert($row['p_price']);
	echo '<div class="col-md-3 col-sm-4 shop-grid-item">
		<div class="product-slide-entry">
			<div class="product-image" pid="ss">
				<img src="'.$row['prod_pic'].'" style="max-height:140px;" alt="" />
				<div class="tops" pid="snajhsa">
					<a class="top-line-a right add_to_wishlist" pid="'.$row['p_id'].'" ><i class="fa fa-heart"></i></a>
				</div>
				<div class="bottom-line">
					<a class="bottom-line-a add_to_cart" pid="'.$row['p_id'].'"><i class="fa fa-shopping-cart"></i> Add to cart</a>
				</div>
			</div>
			<a class="tag" href="shop.php?id='.$row['shop_id'].'">By :- '.$row['shop_name'].'</a>
			<a class="title" href="product.php?pid='.$row['p_id'].'">'.$row['p_name'].'</a>
			<div class="price">
				<div class="current">'.after_discount($price , $row['p_discount']).'</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>';
}

$sql="SELECT FOUND_ROWS() AS total_items";
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
$row=mysqli_fetch_array($res);
$items=$row['total_items'];
$pageShow=array();
$a=0;
$hasMore=false;
if(($items-$limit*$page)>0){
	$hasMore=true;
	$pageShow[]=$page;
	$tst=$page+1;
	while(($items-($limit*$tst))>=0){
		if($a==3){
			break;
		}
		$pageShow[]=$tst;
		$a++;
		$tst++;
	}
}else{
	$hasMore=false;
}
if($hasMore){
	$cnt=count($pageShow);
	if($pageShow[0]==1){
		$upto = $cnt;
	}else{
		$upto = $pageShow[0] + $cnt - 1;
	}
	$totalRes=(int)($items/$limit)+1;
	$upto = ($upto>=$totalRes)?$totalRes:$upto;
	$upto=$upto+1;
}


?>
                            </div>
                            <div class="page-selector page-selector-at-bottom">
                                <div class="description">
<?php 
	if($hasMore){
		echo 'Showing: '.$pageShow[0].'-'.$upto.' of '.$totalRes;
		echo '</div>
			<div class="pages-box">';
			$ax=1;$bx=2;
			if($pageShow[0]!=1){
				if($pageShow[0]==2){
					echo '<a href="'.$href.$ax.'" class="square-button" >'.$ax.'</a>';
				}elseif($pageShow[0]==3){
					echo '<a href="'.$href.$ax.'" class="square-button" >'.$ax.'</a>';
					echo '<a href="'.$href.$bx.'" class="square-button" >'.$bx.'</a>';
				}else{
					$strt=$pageShow[0]-3;
					$i=1;
					while($strt>0){
						if($i==3){break;}
						echo '<a href="'.$href.$strt.'" class="square-button" >'.$strt.'</a>';
						$i++;
						$strt++;
					}
				}
			}
			echo '<a href="'.$href.$pageShow[0].'" class="square-button active" >'.$pageShow[0].'</a>';
		$frloop=$cnt-1;
		$b=1;
		$atlast=$cnt-1;
		while($frloop>0){		
			echo '<a href="'.$href.$pageShow[$b].'" class="square-button">'.$pageShow[$b].'</a>';
				$frloop--;
				$b++;
		}
		if($pageShow[$atlast]!=$totalRes){
			$putcnt=$pageShow[$atlast]+1;
			echo '<div class="divider">...</div>
				<a href="'.$href.$putcnt.'" class="square-button"><i class="fa fa-angle-right"></i></a>';
				
				
			
		}
		echo '</div>';
	}else{
//		echo showNoResult(' RESULTS');
	}
?>                                <div class="clear"></div>
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

