<?php
session_start();
if (isset($_SESSION['IS_AUTHENTICATED'])) {
    require('require.php');
?>
<html>
    <head>
        <title>No result found</title>
        <style>
            img
            {
                display: block;
                margin-left: auto;
                margin-right: auto;
               width: 50%;                
            }
            </style>
    <body>
        <div class="img">
            <img src="no-result.gif">
        </div>
    </body>
</html>
<?php
}else{
     header("Location: loginpage.php");
     exit();
}
 ?>
        
