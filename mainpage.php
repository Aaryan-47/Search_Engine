<?php 
session_start();
if (isset($_SESSION['IS_AUTHENTICATED'])) {
    require('require.php');
 ?>
<html>
    <head>
        <link rel="stylesheet" href="mainpage.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>The Main Page</title>
    </head>
    <body id="body">
    <script>var i = 0;
            var images = [];
            var time = 4000; 
            images[0] = "url(background1.jpg)";
            images[1] = "url(background2.jpg)";
            images[2]="url(background3.jpg)";
            function changeImage() {
                var el = document.getElementById('body');
                el.style.backgroundImage = images[i];
                if (i < images.length - 1) {
                    i++;
                } else {
                    i = 0;
                }
                setTimeout('changeImage()', time);
            }
            
            window.onload = changeImage;</script>
    </body>
        <div class="container">
            <span>WHAT ARE YOU LOOKING FOR?</span>
        </div>
        <div class="imgbox">
            <form action="result.php" method="post">
                <input type="text" class="textbox" placeholder="Search" name="query">
                <input title="Search" value="GO" type="submit" class="button" name="search">
              </form>>
        </div>
    </body>
</html>
<?php 

}else{
     header("Location: loginpage.php");
     exit();
}

 ?>