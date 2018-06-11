<?php


include 'db_access.php';
include 'output_fun.php';
//unset($_SESSION['shopping_cart']);

/*
$home_page_product=1;

*/
if(isset($_POST['alle'])){
	$sql='SELECT * FROM product';
	if(mysqli_query($db,$sql)){
		echo 'Yes You ARe on';
	}else{
		echo 'database prob';
	}
}

if(isset($_POST['show_product'])){
	$pid=(isset($_POST['pid']))?mysqli_real_escape_string($db,trim($_POST['pid'])):"";
	$sql="SELECT 
		p.p_id,p.p_name,p.p_price,p.p_discount,p.p_subcat,p.p_seller_id
		c.cat_name,pics.pic_url,
		sh.shop_id,sh.shop_name
		FROM 
		product p RIGHT JOIN category c ON p.cat_id=c.cat_id 
		LEFT JOIN pics ON p.p_id=pics.pic_id 
		LEFT JOIN shop sh ON p.p_seller_id=sh.shop_id 
		GROUP BY p.p_id ";
		
		
}

if(isset($_GET['add_to_cart'])){
	$p_id=(isset($_GET['p_id']))?mysqli_real_escape_string($db,trim($_GET['p_id'])):"";
	
	if(isset($_SESSION['shopping_cart'])){
		
		$sql="SELECT 
			p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
			sh.shop_id,sh.mob_no
			FROM
			product p LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
			WHERE
			p_id=$p_id";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));
		while($row=mysqli_fetch_assoc($res)){
			$item_array_id=array_column($_SESSION['shopping_cart'],'p_id');
			
			if(!(in_array($row['p_id'],$item_array_id))){
				$item_array=array(
							"p_id"=>$row['p_id'],
							"sh_id"=>$row['shop_id'],
							"mob_no"=>$row['mob_no'],
							"p_name"=>$row['p_name'],
							"p_price"=>$row['p_price'],
							"p_discount"=>$row['p_discount'],
							"pic_url"=>$row['prod_pic'],
							"p_qty"=>1
							);
				$cnt=count($_SESSION['shopping_cart']);
				$_SESSION['shopping_cart'][$cnt]=$item_array;
				echo 'Product added';
			}else{
				echo 'Already Added';
			}
		}
	}else{
		$sql="SELECT 
			p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
			sh.shop_id,sh.mob_no
			FROM
			product p LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
			WHERE
			p_id=$p_id";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));
		while($row=mysqli_fetch_assoc($res)){
			$item_array=array(
						"p_id"=>$row['p_id'],
						"sh_id"=>$row['shop_id'],
						"mob_no"=>$row['mob_no'],
						"p_name"=>$row['p_name'],
						"p_price"=>$row['p_price'],
						"p_discount"=>$row['p_discount'],
						"pic_url"=>$row['prod_pic'],
						"p_qty"=>1
						);
			$_SESSION['shopping_cart'][0]=$item_array;
			echo 'Product added';
		}	

}	
	
}

if(isset($_POST['add_to_cart_qty'])){
	$p_id=(isset($_POST['p_id']))?mysqli_real_escape_string($db,trim($_POST['p_id'])):"";
	$qty=(isset($_POST['qty']))?mysqli_real_escape_string($db,trim($_POST['qty'])):"";
	
	if(isset($_SESSION['shopping_cart'])){
		
		$sql="SELECT 
			p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
			sh.shop_id,sh.mob_no
			FROM
			product p LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
			WHERE
			p_id=$p_id";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));
		while($row=mysqli_fetch_assoc($res)){
			$item_array_id=array_column($_SESSION['shopping_cart'],'p_id');
			
			if(!(in_array($row['p_id'],$item_array_id))){
				$item_array=array(
							"p_id"=>$row['p_id'],
							"sh_id"=>$row['shop_id'],
							"mob_no"=>$row['mob_no'],
							"p_name"=>$row['p_name'],
							"p_price"=>$row['p_price'],
							"p_discount"=>$row['p_discount'],
							"pic_url"=>$row['prod_pic'],
							"p_qty"=>$qty
							);
				$cnt=count($_SESSION['shopping_cart']);
				$_SESSION['shopping_cart'][$cnt]=$item_array;
				echo 'Product added';
			}else{
				echo 'Already Added';
			}
		}
	}else{
		$sql="SELECT 
			p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
			sh.shop_id,sh.mob_no
			FROM
			product p LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
			WHERE
			p_id=$p_id";
		$res=mysqli_query($db,$sql) or die(mysqli_error($db));
		while($row=mysqli_fetch_assoc($res)){
			$item_array=array(
						"p_id"=>$row['p_id'],
						"sh_id"=>$row['shop_id'],
						"mob_no"=>$row['mob_no'],
						"p_name"=>$row['p_name'],
						"p_price"=>$row['p_price'],
						"p_discount"=>$row['p_discount'],
						"pic_url"=>$row['prod_pic'],
						"p_qty"=>$qty
						);
			$_SESSION['shopping_cart'][0]=$item_array;
			echo 'Product added';
		}

	}	
	
}

if(isset($_POST['show_cart'])){
	$no_items=0;
	if(isset($_SESSION['shopping_cart'])){
		$a=2;
		$cnt=count($_SESSION['shopping_cart']);
		$total=0;
		while($cnt>0){
			$total=$total + convert($_SESSION['shopping_cart'][$cnt-1]['p_price'])*convert($_SESSION['shopping_cart'][$cnt-1]['p_qty']);
			if($a>0){
			echo '<div class="cart-entry">
					<a class="image"><img src="'.$_SESSION['shopping_cart'][$cnt-1]['pic_url'].'" alt="" /></a>
					<div class="content">
						<a class="title" href="#">'.$_SESSION['shopping_cart'][$cnt-1]['p_name'].'</a>
						<div class="quantity">Quantity: '.$_SESSION['shopping_cart'][$cnt-1]['p_qty'].'</div>
						<div class="price">'.$_SESSION['shopping_cart'][$cnt-1]['p_price'].'</div>
					</div>
				</div>';
	//		echo $_SESSION['shopping_cart']['items'][$cnt-1]['p_id'];
			}
			$cnt--;
			$a--;
			$no_items++;
		}
		$subtotal=$total;
		echo '<div class="summary">
                <div class="subtotal">Subtotal: '.$total.'</div>
                <div class="grandtotal">Grand Total <span>'.$subtotal.'</span></div>
            </div>
            <div class="cart-buttons">
                <div class="column">
                    <a class="button style-3" href="cart.php">view cart<span class="badge"> '.$no_items.'</span></a>
                    <div class="clear"></div>
                </div>
                <div class="column">
                    <a class="button style-4" href="checkout.php">checkout</a>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>';
	}else{
		echo '<div style="color:#800000;font-weight:700;text-align:center;">No items in cart.</div>';
	}
}


if(isset($_POST['show_account'])){
$sql="SELECT 
	c_fname,c_lname,c_mobno,c_username,c_gen,c_email,c_age,c_country
	FROM customer_table 
	WHERE c_id=".$_SESSION['c_id'];

$res=mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_assoc($res)){
	echo '  <div class="information-entry">
				<h3 class="block-title main-heading">Your Details:-</h3>
				<div class="article-container style-1">
					<h4>PROJECT DESCRIPTION</h4>
					<p>Etiam quis arcu non lectus scelerisque adipiscing eget sit amet eros. Etiam et risus vehicula, pulvinar velit quis, sagittis nisi. Aliquam eu augue id mauris porttitor tempor et eget quam. Mauris elementum enim.</p>
				</div>
				<div class="detail-info-lines">
					<div class="share-box">
						<div class="title"><b>Your Name:</b> '.$row['c_fname'].' '.$row['c_lname'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Mob No:</b> '.$row['c_mobno'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Username:</b> '.$row['c_username'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Gender:</b> '.$row['c_gen'].'</div>
					</div>
					<div class="share-box">
						<div class="title"><b>Email:</b> '.$row['c_email'].'</div>
					</div>
				</div>
			</div>';
}
	
}

if(isset($_POST['show_wishlist'])){
$sql="SELECT 
	w.w_id,p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
	sh.shop_id,sh.shop_name
	FROM
	wishlist w LEFT JOIN product p ON w.p_id=p.p_id
	RIGHT JOIN shop_id sh ON p.p_seller_id=sh.shop_id
	WHERE
	w.c_id=".$_SESSION['c_id'];
$res=mysqli_query($db,$sql) or die(mysqli_error($db));

echo '<div class="wishlist-header hidden-xs">
		<div class="title-1">Product Name</div>
		<div class="title-2">Purchase Product</div>
	</div>
	<div class="wishlist-box">';
while($row=mysqli_fetch_assoc($res)){
	echo '<div class="wishlist-entry" id="'.$row['p_id'].'">
			<div class="column-1">
				<div class="traditional-cart-entry">
					<a class="image" href="#"><img alt="" src="'.$row['prod_pic'].'" /></a>
					<div class="content">
						<div class="cell-view">
							<a class="tag" href="#">'.$row['shop_name'].'</a>
							<a class="title" href="#">'.$row['p_name'].'</a>
							<div class="price">
								<div class="prev">'.$row['p_price'].'</div>
								<div class="current">'.after_discount($row['p_price'],$row['p_discount']).'</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="column-2">
				<a class="button style-14 add_to_cart" pid="'.$row['p_id'].'">add to cart</a>
				<a class="remove-button remove_wishlist" pid="'.$row['p_id'].'"><i class="fa fa-times"></i></a>
			</div>
		</div>';
}
}


if(isset($_POST['show_orders'])){
	$sql="SELECT 
		o.o_id,o.d_order_placed,o.order_status_code,o.order_details,
		i.inovice_details
		FROM
		order_table o LEFT JOIN invoices i ON o.o_id=i.order_id
		WHERE
		o.c_id=1".$_SESSION['c_id'];	

	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	echo '<table class="table table-bordered order-table" style="display:block;overflow-x:scroll;white-space: nowrap;">
			<th>Order No</th><th>Date Placed</th><th>Order Status</th><th>Order Details</th><th>Invoice Details</th>';
	while($row=mysqli_fetch_assoc($res)){
		echo '<tr><td>'.$row['o_id'].'</td><td>'.$row['d_order_placed'].'</td><td>'.$row['order_status_code'].'</td>
			<td>'.$row['order_details'].'</td><td>'.$row['inovice_details'].'</td></tr>';
			
	}	
	echo '</table>';
}

if(isset($_POST['shop_comments'])){
	$sid=(isset($_POST['sid']))?mysqli_real_escape_string($db,$_POST['sid']):"";
	$sql="SELECT 
		cm.comment_id,cm.comment_txt,cm.date_commented,
		c.c_fname,c.c_pic,x.total_cmnts
		FROM
		comment_table cm LEFT JOIN customer_table c ON cm.c_id=c.c_id 
		LEFT JOIN ( SELECT o_id , count(comment_id) as total_cmnts FROM comment_table WHERE o_id=$sid GROUP BY o_id ) x ON cm.o_id=x.o_id
		WHERE
		cm.o_id=$sid AND comment_on='shop'
		LIMIT 13";	

	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	$row=mysqli_fetch_assoc($res);
	echo '<div class="row">
		<div class="col-md-8 col-sm-12 blog-entry">
			<h3 class="additional-blog-title">Comments posted ('.intval($row['total_cmnts']).')</h3>';
	mysqli_data_seek($res,0);
	if(mysqli_num_rows($res)>0){
	while($row=mysqli_fetch_assoc($res)){
		echo '<div class="comment">
				<a class="comment-image" href="#"><img src="'.$row['c_pic'].'" alt="" /></a>
				<div class="comment-content">
					<div class="comment-title"><span>'.$row['c_fname'].'</span>  '.$row['date_commented'].'</div>
					<div class="comment-text">'.$row['comment_txt'].'</div>
				</div>
			</div>';
	}
	}else{
		echo '<div class="comment-content">
				Be the first one to comment.
				</div>';
	}
	echo '</div>
			<div class="col-md-4 col-sm-12 blog-entry">
				<h3 class="additional-blog-title">Leave a comment</h3>
				<form>
					<label>Your Message <span>*</span></label>
					<textarea class="simple-field" placeholder="Your message content (required)" ></textarea>
					<div class="button style-10">Send Message<input type="submit" value="" /></div>
				</form>
			</div>
		</div>';
}

if(isset($_POST['edit_account'])){
	$sql="SELECT 
	c_fname,c_lname,c_mobno,c_username,c_gen,c_email,c_age,c_country
	FROM customer_table 
	WHERE c_id=".$_SESSION['c_id'];

	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	while($row=mysqli_fetch_assoc($res)){
		echo '<form>
			<label>Your Name <span>*</span></label>
			<input class="simple-field" type="text" required value="'.$row['c_fname'].' '.$row['c_lname'].'" />
			<label>Your Mob No</label>
			<input class="simple-field" type="text" value="'.$row['c_mobno'].'" />
			<label>Your Gender <span>*</span></label>
			<input class="simple-field" type="text" required value="'.$row['c_gen'].'" />
			<label>Your Age <span>*</span></label>
			<input class="simple-field" type="text" required value="'.$row['c_age'].'" />
			<div class="button style-10">Submit<input type="submit" value="" /></div>
		</form>';
	}
}


if(isset($_POST['fullview'])){
$pid=(isset($_POST['pid']))?mysqli_real_escape_string($db,$_POST['pid']):"";

$sql="SELECT 
	p.p_id,p.p_name,p.p_description,p.p_price,p.p_discount,p.p_subcat,p.p_seller_id,p.prod_pic,
	c.cat_id,c.cat_name,pics.pic_url,
	sh.shop_id,sh.shop_name
	FROM 
	product p RIGHT JOIN category c ON p.cat_id=c.cat_id 
	LEFT JOIN pics ON p.p_id=pics.p_id 
	LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id 
	WHERE p.p_id=$pid";
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
	}else{
		if(!empty($row['pic_url'])){
			$img_arr[]=$row['pic_url'];
		}
	}
	$no++;
}
$p_after_dis=convert($p_price)*(100-$p_discount);		
$p_after_dis=(int)($p_after_dis/100);
      echo '<div class="overflow">
            <div class="table-view">
                <div class="cell-view">
                    <div class="close-layer"></div>
                    <div class="popup-container">
				                    <div class="row">
                        <div class="col-sm-6 information-entry">
                            <div class="product-preview-box">
                                <div class="swiper-container product-preview-swiper" data-autoplay="0" data-loop="1" data-speed="500" data-center="0" data-slides-per-view="1">
									<div class="swiper-wrapper">';

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

                     echo '		</div>
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
                                        <div class="swiper-wrapper">';

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

                        echo '		</div>
                                        <div class="pagination"></div>
                                    </div>
                                </div>		
                            </div>
                        </div>
                        <div class="col-sm-6 information-entry">
                            <div class="product-detail-box">
                                <h1 class="product-title">'.$p_name.'</h1>
                                <h3 class="product-subtitle">'.$shop_name.'</h3>
                                <div class="rating-box">
                                    <div class="star"><i class="fa fa-star"></i></div>
                                    <div class="star"><i class="fa fa-star"></i></div>
                                    <div class="star"><i class="fa fa-star"></i></div>
                                    <div class="star"><i class="fa fa-star-o"></i></div>
                                    <div class="star"><i class="fa fa-star-o"></i></div>
                                    <div class="rating-number">25 Reviews</div>
                                </div>
                                <div class="product-description detail-info-entry">'.$p_description.'</div>
                                <div class="price detail-info-entry">
                                    <div class="prev">Rs '.convert($p_price).'</div>
                                    <div class="current">Rs '.$p_after_dis.'</div>
                                </div>
                               <div class="quantity-selector detail-info-entry">
                                    <div class="detail-info-entry-title">Quantity</div>
                                    <div class="entry number-minus">&nbsp;</div>
                                    <div class="entry number">1</div>
                                    <div class="entry number-plus">&nbsp;</div>
                                </div>
                                <div class="detail-info-entry">
                                    <a class="button style-10 add_to_cart" pid="'.$p_id.'" >Add to cart</a>
                                    <a class="button style-11 add_to_wishlist" pid="'.$p_id.'" ><i class="fa fa-heart"></i> Add to Wishlist</a>
                                    <div class="clear"></div>
                                </div>
                               <div class="share-box detail-info-entry">
                                    <div class="title">Share in social media</div>
                                    <div class="socials-box">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-youtube"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
 
					<div class="close-popup"></div>
                    </div>
                </div>
            </div>
        </div>';
	
}

if(isset($_POST['add_to_wishlist'])){
	$pid=(isset($_POST['pid']))?mysqli_real_escape_string($db,trim($_POST['pid'])):"";
	$sql="SELECT c_id , p_id FROM wishlist WHERE c_id=1 AND p_id=$pid";
	$res=mysqli_query($db,$sql) or mysqli_error($db);
	if(mysqli_num_rows($res)>0){
		echo 'Already Added To Your Wishlist';
	}else{
		$sql="INSERT INTO wishlist 
			(w_id,c_id,p_id)
			VALUES
			(NULL,1,$pid)";
			
		if(mysqli_query($db,$sql)){
			echo 'Added To Wishlist';
		}else{ 
			echo mysqli_error($db);
		}
	}
	
}



if(isset($_POST['cart_remove'])){
	$p_id=(isset($_POST['p_id']))?mysqli_real_escape_string($db,trim($_POST['p_id'])):"";
	
	if(isset($_SESSION['shopping_cart'])){
		$item_array_id=array_column($_SESSION['shopping_cart'],'p_id');
		if(in_array($p_id,$item_array_id)){
			$key=array_search($p_id,$item_array_id);
			array_splice($_SESSION['shopping_cart'],$key,1);
			echo 'Product Removed From Cart.';
		}else{
			echo 'This Product is not in the cart.';
		}
	}else{
		echo 'No Product in cart';
	}
}

if(isset($_POST['cart_update'])){
	$p_id=(isset($_POST['p_id']))?mysqli_real_escape_string($db,trim($_POST['p_id'])):"";
	$qty=(isset($_POST['qty']))?mysqli_real_escape_string($db,trim($_POST['qty'])):"";
	
	if(isset($_SESSION['shopping_cart'])){
		$item_array_id=array_column($_SESSION['shopping_cart'],'p_id');
		if(in_array($p_id,$item_array_id)){
			$key=array_search($p_id,$item_array_id);
			$_SESSION['shopping_cart'][$key]['p_qty']=$qty;
			echo 'Cart Updated.';
		}else{
			echo 'This Product is not in the cart.';
		}
	}else{
		echo 'No Product in cart';
	}
	
	
}
	
	

if(isset($_POST['wishlist_rmv'])){
	$pid=(isset($_POST['pid']))?mysqli_real_escape_string($db,trim($_POST['pid'])):"";
	$sql="DELETE FROM wishlist WHERE w_id=$pid";
	$res=mysqli_query($db,$sql) or die(mysqli_error($db));
	
	
	
	
	

}




if(isset($_POST['sortingRes'])){
	$by=(isset($_POST['by']))?mysqli_real_escape_string($db,$_POST['by']):"";
	$src=(isset($_POST['src']))?mysqli_real_escape_string($db,$_POST['src']):"";
	$fr=(isset($_POST['fr']))?mysqli_real_escape_string($db,$_POST['fr']):"";
	$id=(isset($_POST['id']))?mysqli_real_escape_string($db,$_POST['id']):"";
	$id=intval($id);
	
	$page=(isset($_POST['page']))?mysqli_real_escape_string($db,$_POST['page']):1;
	$page = intval($page);
	$start= ($page-1)*$limit;
	
	if($fr=='shop_items'){
		$whereQuery="sh.shop_id=$id ";
	}else{
		$whereQuery="p.p_name LIKE '%$src%' OR c.cat_keywords LIKE '%$src%'";
	}
	$orderby="";
	switch($by){
		case "Price":
			$orderby="p_price";
			break;
		case "Category":
			$orderby="c.cat_name";
			break;
		case "Name":
			$orderby="p.p_name";
			break;
	}
	
	$sql="SELECT 
	p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
	c.cat_name,c.cat_keywords,
	sh.shop_id,sh.shop_name
	FROM
	product p LEFT JOIN category c ON c.cat_id=p.p_id
	LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id 
	WHERE
	$whereQuery 
	ORDER BY $orderby DESC
	LIMIT $start , $limit";	
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_assoc($res)){
	$price = convert($row['p_price']);
	echo '<div class="col-md-3 col-sm-4 shop-grid-item">
		<div class="product-slide-entry">
			<div class="product-image" pid="ss">
				<img src="'.$row['prod_pic'].'" style="max-height:140px;" alt="" />
				<div class="tops" pid="snajhsa">
					<a class="top-line-a left open-product fullview" pid="'.$row['p_id'].'" ><i class="fa fa-expand"></i></a>
					<a class="top-line-a right add_to_wishlist" pid="'.$row['p_id'].'" ><i class="fa fa-heart"></i></a>
				</div>
				<div class="bottom-line">
					<a class="bottom-line-a add_to_cart" pid="'.$row['p_id'].'"><i class="fa fa-shopping-cart"></i> Add to cart</a>
				</div>
			</div>
			<a class="tag" href="shop.php?id='.$row['shop_id'].'">By :- '.$row['shop_name'].'</a>
			<a class="title" href="product.php?pid='.$row['p_id'].'">'.$row['p_name'].'</a>
			<div class="rating-box">
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
			</div>
			<div class="price">
				<div class="prev">Rs '.$price.'</div>
				<div class="current">'.after_discount($price , $row['p_discount']).'</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>';
}
}

if(isset($_POST['orderRes'])){
	$by=(isset($_POST['by']))?mysqli_real_escape_string($db,$_POST['by']):"";
	$src=(isset($_POST['src']))?mysqli_real_escape_string($db,$_POST['src']):"";
	$fr=(isset($_POST['fr']))?mysqli_real_escape_string($db,$_POST['fr']):"";
	$id=(isset($_POST['id']))?mysqli_real_escape_string($db,$_POST['id']):"";
	$id=intval($id);
	$incordec=(isset($_POST['order']))?mysqli_real_escape_string($db,$_POST['order']):"";
	
	$page=(isset($_POST['page']))?mysqli_real_escape_string($db,$_POST['page']):1;
	$page = intval($page);
	$start= ($page-1)*$limit;
	
	
	if($fr=='shop_items'){
		$whereQuery="sh.shop_id=$id ";
	}else{
		$whereQuery="p.p_name LIKE '%$src%' OR c.cat_keywords LIKE '%$src%'";
	}
	$orderby="";
	switch($by){
		case "Price":
			$orderby="p_price";
			break;
		case "Category":
			$orderby="c.cat_name";
			break;
		case "Name":
			$orderby="p.p_name";
			break;
	}
	
	$sql="SELECT 
	p.p_id,p.p_name,p.p_price,p.p_discount,p.prod_pic,
	c.cat_name,c.cat_keywords,
	sh.shop_id,sh.shop_name
	FROM
	product p LEFT JOIN category c ON c.cat_id=p.p_id
	LEFT JOIN shop_id sh ON p.p_seller_id=sh.shop_id 
	WHERE 
	$whereQuery 
	ORDER BY $orderby $incordec
	LIMIT $start , $limit";	
$res=mysqli_query($db,$sql) or die(mysqli_error($db));
while($row=mysqli_fetch_assoc($res)){
	$price = convert($row['p_price']);
	echo '<div class="col-md-3 col-sm-4 shop-grid-item">
		<div class="product-slide-entry">
			<div class="product-image" pid="ss">
				<img src="'.$row['prod_pic'].'" style="max-height:140px;" alt="" />
				<div class="tops" pid="snajhsa">
					<a class="top-line-a left open-product fullview" pid="'.$row['p_id'].'" ><i class="fa fa-expand"></i></a>
					<a class="top-line-a right add_to_wishlist" pid="'.$row['p_id'].'" ><i class="fa fa-heart"></i></a>
				</div>
				<div class="bottom-line">
					<a class="bottom-line-a add_to_cart" pid="'.$row['p_id'].'"><i class="fa fa-shopping-cart"></i> Add to cart</a>
				</div>
			</div>
			<a class="tag" href="shop.php?id='.$row['shop_id'].'">By :- '.$row['shop_name'].'</a>
			<a class="title" href="product.php?pid='.$row['p_id'].'">'.$row['p_name'].'</a>
			<div class="rating-box">
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
				<div class="star"><i class="fa fa-star"></i></div>
			</div>
			<div class="price">
				<div class="prev">Rs '.$price.'</div>
				<div class="current">'.after_discount($price , $row['p_discount']).'</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>';
}
}




?>