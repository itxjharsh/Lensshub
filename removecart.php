<?php
$server = "localhost";
$user  = "root";
$pass = "";
$db = "Lensshub";
$conn = mysqli_connect($server,$user,$pass,$db);
if(!$conn){
    die("could't connect to database due to this error-->".mysqli_connect_error($conn));
}
// else{
//     echo "connected successfully";
//     echo "<br>";
// }
$cust = $_GET['cid'];
$sid = $_GET['sid'];
echo $cust;
$sql= "DELETE FROM `Cart` WHERE `specs_id` = '$sid' AND `Customer_Id` = '$cust'";
$result = mysqli_query($conn,$sql);
if($result){
    header('Location: cart.php');
}
?>