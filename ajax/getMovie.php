<?php
	session_start();
	$movies = $_SESSION["movies"];
	$seen = $_SESSION["seen"];
	$i = 0;
	$movienum = rand(0, sizeof($movies)-1);
	while(in_array($movienum, $seen) and $i < sizeof($movies)) //if we've already seen it, keep asking for randoms till we dont
	{
		$movienum = rand(0, sizeof($movies)-1);
		$i++;
	}
	array_push($_SESSION["seen"], $movienum);
	if($i >= sizeof($movies))
		$_SESSION["seen"] = array();
	session_write_close();
	
	$movie = $movies[$movienum];
	list($width, $height, $type, $attr) = getimagesize("../img/poster/".$movie['img']);
	
	$letters = array();
	for($i = 0; $i < strlen($movie["title"]); $i++)
		$letters[$i] = ord(strtoupper(substr($movie["title"], $i, 1)));
	
	$return = array(
				"poster" 	=> $movie['img'],
				"width"		=> $width,
				"subdes"	=> $movie["subdes"],
				"des"		=> $movie["des"],
				"letters"	=> $letters,
				"seen"		=> $seen
	);
	$jsonstring = json_encode($return);
	
	echo $jsonstring;
	
	exit;
?>