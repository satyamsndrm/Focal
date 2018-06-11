
    <script src="js/idangerous.swiper.min.js"></script>
    <script src="js/global.js"></script>
	<script>
$(document).ready(function(){
	shop_comments();
	
	$(".add_to_cart_qty").on("click", function(){
		var pid= $(this).attr("pid");
		var qty= parseInt($(".number").text(), 10);
		alert(qty+pid);
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{add_to_cart_qty:1, p_id:pid , qty:qty},
			success	:	function(data){
				$("div#txt-to-show p").html(data);
				$("div#modal-msg").show("fade");
				
				setTimeout(function(){
					$("div#modal-msg").hide("fade");
					},2000);
			}});
		
	});

	$(".cart_update").on("click", function(){
		var divUpd = $(this).parent().find('.number');
		var qty = parseInt(divUpd.text(), 10);
		var pid= $(this).attr("pid");
//		alert(qty);
//		alert(pid);
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{cart_update:1, p_id:pid , qty:qty},
			success	:	function(data){
				window.location.href="cart.php";
			}});
	});

	function test(){
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{alle:1},
			success	:	function(data){
				alert(data);
				$(".information-blocks.home_page_cat").html(data);
				
		}});
	}

	$("a.open-image").on("click",function(){
		var purl=$(this).attr('pic');
		$(".popup-container .gallery-image").attr('src',purl);
		
	});

	$("select#sortingRes").on("change",function(){
		var by = $(this).val();
		var src = $("div.sort-button").attr('search');
		var shopid = $("div.sort-button").attr('srcid');
		var page = $("div#current-page").attr('page');
		var type = typeof(src);
		if(type=="undefined"){
			fr='shop_items';
		}else{
			fr='search';
		}
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{sortingRes:1 , by:by , src:src , page:page , fr:fr , id:shopid},
			success	:	function(data){
				$(".shop-grid.grid-view").html(data);
				
		}});
	});
	
	$("div.sort-button").on("click",function(){
		var id = $(this).attr('id');
		var shopid = $(this).attr('srcid');
		var src = $("div.sort-button").attr('search');
		var by = $("select#sortingRes").val();
		var page = $("div#current-page").attr('page');
		
		var type = typeof(src);
		if(type=="undefined"){
			fr='shop_items';
		}else{
			fr='search';
		}
		
		var order = (id=="dec")?"ASC":"DESC";
		var toput = (id=="dec")?"inc":"dec";
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{orderRes:1 , by:by , src:src , order:order , page:page , fr:fr , id:shopid},
			success	:	function(data){
				$(".shop-grid.grid-view").html(data);
				$("div.sort-button").attr('id',toput);
				
		}});
	});
	
	function shop_comments(){
		var s_id = $(".shop_comments").attr('id');
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{shop_comments:1 , sid:s_id},
			success	:	function(data){
				$(".information-blocks.shop_comments").html(data);
				
		}});
	}


/*	*/
	$("div a.add_to_cart").on("click",function(){
		var pid = $(this).attr('pid');
		$.ajax({
			url	:	"action.php",
			method:	"GET",
			data	:	{add_to_cart:1, p_id:pid},
			success	:	function(data){
				$("div#txt-to-show p").html(data);
				$("div#modal-msg").show("fade");
				
				setTimeout(function(){
					$("div#modal-msg").hide("fade");
					},2000);
			}});
		
	});
	
	$(".cart_remove").on("click",function(){
		var pid = $(this).attr('pid');
//		alert(pid);
		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{cart_remove:1, p_id:pid},
			success	:	function(data){
				$("div#txt-to-show p").html(data);
				$("div#modal-msg").show("fade");
				
				setTimeout(function(){
					$("div#modal-msg").hide("fade");
					},2000);
				window.location.href="cart.php";
				
			}});
	});
	
	$("a.add_to_wishlist").on("click" , function(){
		var p_id = $(this).attr('pid');

		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{add_to_wishlist:1, pid:p_id},
			success	:	function(data){
				$("div#txt-to-show p").html(data);
				$("div#modal-msg").show("fade");
				
				setTimeout(function(){
					$("div#modal-msg").hide("fade");
					},2000);
				
			}});

	});

/*	*/
	$("a.open-cart-popup").on("mouseover", function(){

		$.ajax({
			url	:	"action.php",
			method:	"POST",
			data	:	{show_cart:1},
			success	:	function(data){
				$("div.popup-container").html(data);
				
			}});
	});
	
	
//	alert('asa');
});	
	
	
	</script>
	<script>
        $(document).ready(function(){
            var minVal = parseInt($('.min-price span').text());
            var maxVal = parseInt($('.max-price span').text());
            $( "#prices-range" ).slider({
                range: true,
                min: minVal,
                max: maxVal,
                step: 5,
                values: [ minVal, maxVal ],
                slide: function( event, ui ) {
                    $('.min-price span').text(ui.values[ 0 ]);
                    $('.max-price span').text(ui.values[ 1 ]);
                }
            });
        });
    </script>
	 <script>
        $(document).ready(function(){
            $(window).load(function(){
                var $container_filter = $('.filter-container').isotope({
                    itemSelector: '.filter-item',
                    masonry: {
                        columnWidth: '.filtergrid-sizer'
                    }
                });

                $('.filter-button').on( 'click', function() {
                  var filterValue = $(this).attr('data-filter');
                  $container_filter.isotope({ filter: filterValue });
                  $(this).parent().find('.active').removeClass('active');
                  $(this).addClass('active');
                });
            });
        });
    </script>
	
	<script>
      var customLabel = {
        restaurant: {
          label: 'R'
        },
        bar: {
          label: 'B'
        }
      };

	function initMap() {
        var map = new google.maps.Map(document.getElementById('map-canvas'), {
          center: new google.maps.LatLng(31.3976, 75.5349),
          zoom: 15
        });
		var marker = new google.maps.Marker({
			map: map,
			position: new google.maps.LatLng(31.3976,75.5349 )
		});
		marker.addListener('click', function() {
			infoWindow.setContent('Your location');
			infoWindow.open(map, marker);
		});
        var infoWindow = new google.maps.InfoWindow;

          // Change this depending on the name of your PHP or XML file
          downloadUrl('<?php echo $url;?>', function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName('marker');
            Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var name = markerElem.getAttribute('name');
              var address = markerElem.getAttribute('address');
              var type = markerElem.getAttribute('type');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));

              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = name
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              var icon = customLabel[type] || {};
              var marker = new google.maps.Marker({
                map: map,
                position: point,
                label: icon.label
              });
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                infoWindow.open(map, marker);
              });
            });
          });
        }



      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}
    </script>
   <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAgMx-fm2VsEVuyLNkOYJxDpENHF0d73Wc&callback=initMap">
    </script>
	<!-- custom scrollbar -->
    <script src="js/jquery.mousewheel.js"></script>
    <script src="js/jquery.jscrollpane.min.js"></script>
</body>
</html>
<?php
ob_end_flush();

?>