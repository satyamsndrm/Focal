<?php
$localtime = time() + (330*60);
$localtime_assoc = localtime($localtime, true);
echo '<pre>';
print_r($localtime_assoc);
echo '</pre>';

if($localtime_assoc['tm_hour']>=12 AND $localtime_assoc['tm_hour']<23 ){
	echo "yes";
}else{
	echo "No";
}
?>