<?php 
include "admin/smsuni/uni.php";
$webname=$_REQUEST["webname"];

$sql="select * from ".$webname ;
$result=mysqli_query($conn,$sql);

$resultList = array();
$resultArr=array();
while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) {
	array_push($resultList,$row);
}
$resultArr["webname"]=$resultList;
mysqli_close($conn);
echo json_encode($resultArr);
 ?>