<?php

	function show_popular_prod($row){
		$price=convert($row['p_price']);
		echo '<div class="swiper-slide"> 
				<div class="paddings-container">
					<div class="product-slide-entry">
						<div class="product-image" pid="ss">
							<img src="'.$row['prod_pic'].'" style="max-height:140px;min-height:140px;" alt="" />
							<div class="tops" pid="snajhsa">
								<a class="top-line-a right add_to_wishlist" pid="'.$row['p_id'].'" ><i class="fa fa-heart"></i></a>
							</div>
							<div class="bottom-line">
								<a class="bottom-line-a add_to_cart" pid="'.$row['p_id'].'"><i class="fa fa-shopping-cart"></i> Add to cart</a>
							</div>
						</div>
						<a class="tag" href="shop.php?id='.$row['shop_id'].'" style="color:#2d5373;font-weight:700;">By :- '.$row['shop_name'].'</a>
						<a class="title" href="product.php?pid='.$row['p_id'].'">'.$row['p_name'].'</a>
						
						<div class="price">
							<div class="current">Rs '.after_discount($price , $row['p_discount']).'</div>
						</div>
					</div>
				</div>
			</div>';
	}

	function convert($s){
		return(int)preg_replace('/[^\-\d]*(\-?\d*).*/','$1',$s);
		}
	
	function after_discount($x,$y){
		return (int)($x*(100-$y)/100);
	}
	
	function removeElementWithValue($array, $key, $value){
		foreach($array as $subKey => $subArray){
			if($subArray[$key] == $value){
				unset($array[$subKey]);
			}
		}
		return $array;
	}
	
	function showNoResult($data){
		echo '<div class="information-blocks">
				<div class="message-box message-warning">
					<div class="message-icon"><i class="fa fa-exclamation"></i></div>
					<div class="message-text"><b>No  Results !</b> There is no '.$data.' currently belonging to the searched category .</div>
					<div class="message-close"><i class="fa fa-times"></i></div>
				</div>
			</div>';
	}
	
	function show_error(){
		echo '<div class="information-blocks">
				<div class="message-box message-danger">
					<div class="message-icon"><i class="fa fa-exclamation"></i></div>
					<div class="message-text"><b>Login Failed !</b>Invalid email address or password.</div>
					<div class="message-close"><i class="fa fa-times"></i></div>
				</div>
			</div>';
	}
	
	
	
	
	
	
	
	
	
?>