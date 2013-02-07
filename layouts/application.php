<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title><?php echo has_content('title') ? yield('title', false) . ' - ' : ''; ?>[SITE NAME]</title>
<base href="<?php echo $config['base_url']; ?>">
<!--[if ! lte IE 6]><!-->
  <link rel="stylesheet" href="css/style.css">
  <?php yield('stylesheets'); ?>
<!--<![endif]-->
<!--[if lte IE 6]>
  <link rel="stylesheet" href="css/libs/ie6.1.1.css">
  <style>html { padding-top: 42px; }</style>
<![endif]-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="js/libs/modernizr-2.6.2.min.js"></script>
</head>
<body>
<header>
<h1>Syfy Header!</h1>
</header>
<div role="main">
	<?php yield(); ?>
    
    <!-- PHP CALL To Database -->
    <?php
		$con = mysql_connect("localhost","root","");
		if (!$con)
			die('Could not connect: ' . mysql_error());
		
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
		$movienum = rand(0, sizeof($movies)-1);
		$seen = array();
		array_push($seen, $movienum);
		$movie = $movies[$movienum];
		list($width, $height, $type, $attr) = getimagesize("img/poster/".$movie['img']);
		
		$letters = array();
		for($i = 0; $i < strlen($movie["title"]); $i++)
			$letters[$i] = strtoupper(substr($movie["title"], $i, 1));
		
    ?>
    <div id="poster">
   		<img src="img/poster/<?php echo $movie['img']; ?>" alt="poster"/>
        <p id="tagline" style="width:<?php echo $width;?>px"><?php echo $movie['subdes'] ?></p>
    </div>
    <div id="description" style="width:<?php echo $width;?>px">
        <p><?php echo $movie['des']; ?></p>
    </div>
    <div id="title">
    	<h3>Guess the title:</h3>
        <?php
			foreach ($letters as $letter)
			{
				if($letter == " ")
					echo '<div class="space"></div>';
				else if(!ctype_alpha($letter))
					echo '<div class="letter">' . $letter . '</div>';
				else
					echo '<div class="letter"><span class="hide">' . ord($letter) . '</span></div>';
			}
		?>
    </div>
</div>
<footer>

</footer>

<script>
$(document).ready(function(e) {
	newMovie();
	
	function newMovie()
	{
		
	}
	
	
	//for guessing
	var good = new Audio("assets/good.wav");
	var bad = new Audio("assets/bad.wav");
	$(document).keydown(function(e){
		var match = false;
		if(e.keyCode >= 60 && e.keyCode <= 90)
		{
			match = false;
			$(".letter span").each(function(index){
				if($(this).html() == e.keyCode)
				{
					$(this).html(String.fromCharCode($(this).html())).removeClass("hide");
					match = true;
				}
			})
			if(match)
			{
				good.currentTime = 0;
				good.play();
			}
			else
			{
				bad.currentTime = 0;
				bad.play();
			}
		}
	}); 
});
</script>


<!--[if ! lte IE 6]><!-->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.8.3.min.js"><\/script>')</script>
  <?php javascripts('script'); yield('javascripts'); ?>
<!--<![endif]-->

<script>
  var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
  (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
  g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
  s.parentNode.insertBefore(g,s)}(document,'script'));
</script>

<!--[if lt IE 7 ]>
  <div style="clear: both; height: 59px; padding: 0; position: absolute; left: 50%; top: 0; margin-left: -410px;">
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
<![endif]-->
</body>
</html>
