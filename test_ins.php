<?php




$line_of_text=array();
if(isset($_POST['action'])){
	$file=$_FILES['file']['tmp_name'];
	echo $_FILES['file']['name'];
	$fh=fopen($file,'r');
	while (!feof($fh) ) {
        $line_of_text[] = fgetcsv($fh, 1024);
    }
    print_r($line_of_text);
	fclose($fh);
}
?>
<form method="post" action="" enctype="multipart/form-data">
<input type="file" name="file" value=""/>
<input type="submit" name="action" value="submit"/>




</form>