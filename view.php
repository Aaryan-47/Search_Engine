<?php
session_start();
if (isset($_SESSION['authentiate'])&&$_SESSION['authentiate']==1) {
 ?>
<html>
    <head>
        <link rel="stylesheet" href="view.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Viewing</title>
</head>
<body>
    <h1>List Of all The Usernames<h1>
        <table>
        <tr>
               <th>S.no</th>
               <th>Username</th>
               <th>Logins</th>
           </tr>
    <?php
    include('connection.php');
    if($_POST['View_all']=='View details'){
    $query="SELECT username,checkif FROM users ORDER BY checkif DESC";
    $result=mysqli_query($conn,$query);
    echo "<table>";
    $s=1;
    while($row=mysqli_fetch_assoc($result))
    {
        echo '<tr>
        <td>'.$s.'</td> 
        <td>'.$row['username'].'</td>
        <td>'.$row['checkif'].'</td>
        </tr>';
        $s=$s+1;
    }
    echo '</table>';
}
if($_POST['View_all']=='Delete')
{
    $username=$_POST['user_name'];
    $query="DELETE FROM users WHERE username LIKE '%$username%'";
    $result=mysqli_query($conn,$query);
    if($result=FALSE)
    {
        echo "Could not find the user in the database";
    }
    else
    {
        echo "Succesfully removed the user";
    }
}
    ?>
</html>
<?php
        }
    else{
        echo "Fail";
     header("Location: loginpage.php");
     exit();
}

 ?>
