<?php
ob_start();
include('connection.php');
if($_POST['user']=='Register')
{
 $username=$_POST['username'];
 $password=$_POST['password'];
 $bit=0;
 $query="INSERT INTO users VALUES ('$username','$password',$bit)";
 $result=mysqli_query($conn,$query);
 if($username!=''&&$password!='')
 {
 if($result==FALSE)
 {
     mysqli_error();
     echo Error;
 }
 else
 {
     echo "Succesfully Registered";
 }

}
else
{
    echo "Please enter details";
}
}
if($_POST['user']=='Login as User')
{
    function test_input($data) {
      
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    if ($_SERVER["REQUEST_METHOD"]== "POST") {
        $username = test_input($_POST["username"]);
        $password = test_input($_POST["password"]);
        $query="SELECT * FROM users WHERE username = '$username' and passwords = '$password'";
        $result=mysqli_query($conn,$query);
        $row=mysqli_num_rows($result);
        if($row!=1)
        {
            include('loginpage.php');
        echo "Login fail";
        exit();
        }
        else
        {
            $query2="UPDATE users SET checkif=checkif+1 WHERE username='$username' and passwords='$password'";
            $result2=mysqli_query($conn,$query2);
            session_start(); 
$_SESSION['IS_AUTHENTICATED'] = 1; 
header('location:mainpage.php'); 
ob_end_flush();
        }
        }
    }
    if($_POST['user']=='Admin')
    {
        $username=$_POST['username'];
        $password=$_POST['password'];
        if($username=='ABC'&&$password=='12345'){
            $_SESSION['USER'] = $username;
            session_start();
            $_SESSION['authentiate'] = 1;
        header("location:form1.php");
        ob_end_flush();
        }
        else
        {
            include('loginpage.php');
        echo "Login fail";
        exit();
        }
    }    
    ?>