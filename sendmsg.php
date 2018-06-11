<?php
function sendmsg($mobile,$message){
	$curl = curl_init();
	
	$sending=urlencode($message);
	$mobileno=$mobile;
	$url="http://api.msg91.com/api/sendhttp.php?campaign=order&response=200&unicode=0&flash=0&message=".$sending."&country=91&authkey=208277AffShMGP5t5ac90daf&mobiles=".$mobileno."&route=4&sender=FOCALF";
	curl_setopt_array($curl, array(
	  CURLOPT_URL => $url,
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "GET",
	  CURLOPT_SSL_VERIFYHOST => 0,
	  CURLOPT_SSL_VERIFYPEER => 0,
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

	curl_close($curl);

	if ($err) {
	  echo "cURL Error #:" . $err;
	} else {
	  echo $response;
	}
}

?>