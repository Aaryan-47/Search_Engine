<?php
session_start();
if (isset($_SESSION['IS_AUTHENTICATED'])) {
    require('require.php');
?>
<html>
    <head>
        <link rel="stylesheet" href="result.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Showing the results</title>
        <style>
            body{
                background-color: #FFDEE9;
background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);
font-family: 'Montserrat', sans-serif;
            }
            #body
  {
      margin-top:20px;
      margin-left:auto;
      margin-right:auto;
	  width:94%;
	  height:400px;
      background-repeat:no-repeat;
      background-size:1500px;
  }
            </style>
</head>
<body>
    <form action="" method="POST">
    <input type="text" class="textbox" placeholder="Search" name="query">
                <input title="Search" value="GO" type="submit" class="button" name="search">
</form>
<br>
<br>
<div id="body">
<script>var i = 0;
            var images = [];
            var time = 4000; 
            images[0] = "url(ad6.jpg)";
            images[1] = "url(ad4.jpg)";
            images[3]="url(ad5.jpg)";
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
            </div>
<table  width="60%" style="margin-left:50px"id="right">
<?php
include('connection.php');
if($_POST['search'])
{
    $data=$_POST['query'];
    $query="SELECT * FROM website WHERE website_keyword LIKE '%$data%'";
    $result=mysqli_query($conn,$query);
    if(mysqli_num_rows($result)==0)
    {
        header("location: fail.php");
    }
    while($row=mysqli_fetch_array($result))
    {
        echo "
        <tr>
        <td>
        <font size='5' color='#000cc'><b><a href='$row[1]'>$row[0]<b></a></font><br>";
        echo "<font color='#006400'>$row[1]</font><br>";
       echo "<font  color='#666666'>$row[2]</font><br><br>";
       echo "
        </td>
        </tr>
        ";
    }
}
?>
</table>
</body>
</html>
<?php
}else{
     header("Location: loginpage.php");
     exit();
}
 ?>