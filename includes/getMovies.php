<?php
mysql_select_db("syfy", $con);
		
$result = mysql_query("SELECT * FROM syfy");

$i = 0;
while($row = mysql_fetch_array($result))
{
	$movies[$i] = array(
		"title"		=> $row["title"],
		"subdes"	=> $row["subdes"],
		"des"		=> $row["des"],
		"img"		=> $row["img"]);
	$i++;
}

session_start();
$_SESSION["movies"] = $movies;
$_SESSION["seen"] = array();
session_write_close();
?>