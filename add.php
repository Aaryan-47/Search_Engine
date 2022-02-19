<?php
session_start();
if (isset($_SESSION['authentiate'])&&$_SESSION['authentiate']==1) {
include('connection.php');
if($_POST['addwebsite'])
{
    $website_name=$_POST['website_name'];
    $website_url=$_POST['website_url'];
    $website_description=$_POST['website_description'];
    $website_keyword=$_POST['website_keyword'];
    if($website_name!=""&&$website_url!=""&&$website_description!=""&&$website_keyword!="")
    {
        $query="INSERT INTO website values ('$website_name','$website_url','$website_description','$website_keyword')";
        $results=mysqli_query($conn,$query);
        if($results==FALSE)
        {
            echo mysqli_error();
            echo Error;
        }
        else{
        echo "Data entered";
        }  
    }
}
else
echo "Wrong";
}
else
{
        echo "Fail";
     header("Location: loginpage.php");
     exit();
}
?>