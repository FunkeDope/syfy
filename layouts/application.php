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
		require_once "includes/dbConnect.php";
		
		require_once "includes/getMovies.php";
    ?>
   
    <div id="poster">
   		<a id="newmovie" href="#"><img src="img/poster/_placeholder.png" alt="poster"/></a>
        <p id="tagline">Description</p>
    </div>
    <div id="description">
        <p>Description</p>
    </div>
    <div id="title">
    	<h3>Guess the title:</h3>
        <span id="letters">
        </span>
    </div>
    <div id="debug"></div>
</div>
<footer>

</footer>

<script>
var uniqueLetters = new Array();
var correctLetters = new Array();
var winCount = 0;

$(document).ready(function(e) {
	
	newMovie();
	
	$("#newmovie").click(function(e){
		newMovie();
	})
	
	function newMovie()
	{
		$.ajax({
			url		: "ajax/getMovie.php",
			success	: function(data)
			{
				movie = $.parseJSON(data);
				console.log(movie);
				$("#poster img").attr("src", "img/poster/" + movie.poster);
				$("#poster p").width(movie.width);
				$("#poster p").html(movie.subdes);
				
				$("#description").width(movie.width);
				$("#description p").html(movie.des);
				
				var letters = "";
				for (i = 0; i < movie.letters.length; i++)
				{
					if(movie.letters[i] == 32) //space
						letters += '<span class="space"></span>';
					else if	(movie.letters[i] < 60 || movie.letters[i] > 90) //some non-letter
						letters += '<span class="letter">' +String.fromCharCode(movie.letters[i]) + '</span>';		
					else
					{
						letters += '<div class="letter"><span class="hide">' + movie.letters[i] + '</span></div>';
						if($.inArray(movie.letters[i], uniqueLetters) == -1)
							uniqueLetters.push(movie.letters[i]);
					}
				}
				$("#title #letters").html(letters);
				
				var debug = "winCount: " + winCount + "<br/>Movie IDs seen:<br/>";
				for(i = 0; i < movie.seen.length; i++)
					debug += movie.seen[i] + "<br/>";
				
				$("#debug").html(debug);
			}
		})
	}
	
	
	//for guessing
	var good = new Audio("assets/good.wav");
	var bad = new Audio("assets/bad.wav");
	$(document).keydown(function(e){
		if(e.keyCode >= 60 && e.keyCode <= 90)
		{
			var match = false;
			$(".letter span").each(function(index){
				if($(this).html() == e.keyCode)
				{
					$(this).html(String.fromCharCode($(this).html())).removeClass("hide");
					match = true;
				}
			})
			if(match)
			{
				if($.inArray(movie.letters[i], e.keyCode) == -1)
					correctLetters.push(e.keyCode);
				
				good.currentTime = 0;
				good.play();
			}
			else
			{
				bad.currentTime = 0;
				bad.play();
			}
			
			//YOU WIN!
			if(correctLetters.length >= uniqueLetters.length)
			{
				alert("YOU WIN");
				uniqueLetters = new Array();
				correctLetters = new Array();
				winCount++;
				newMovie();
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
