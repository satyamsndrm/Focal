<?php

$conn=new mysqli('localhost', 'root', '', 'focal');
if (!$conn) {  die('Not connected : ' . mysql_error());}

$dom = new DOMDocument("1.0");
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

// Select all the rows in the markers table
$id=(isset($_GET['id']))?$conn->real_escape_string($_GET['id']):"1";
$query = "SELECT 
		s.shop_id , shop_name , shop_address , lat , lang,type,
		c.cat_name
		FROM shop_id s LEFT JOIN category c ON s.cat_id= c.cat_id
		WHERE c.cat_id =$id";
$result = $conn->query($query);
if (!$result) {
  die('Invalid query: ' . mysqli_error($conn));
}


header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each

while ($row = $result->fetch_object()){
  // Add to XML document node
  $node1 = $dom->createElement("marker");
  $newnode = $parnode->appendChild($node1);
  $newnode->setAttribute("id",$row->shop_id);
  $newnode->setAttribute("name",$row->shop_name);
  $newnode->setAttribute("address",$row->shop_address);
  $newnode->setAttribute("lat",$row->lat);
  $newnode->setAttribute("lng",$row->lang);
  $newnode->setAttribute("type","restaurant");
}

echo $dom->saveXML();



?>