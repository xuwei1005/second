<?php 
include "admin/smsuni/uni.php";
$sql="select * from  usertext  ";
$result=mysqli_query($conn,$sql);
// $row = mysqli_fetch_array($result,MYSQL_ASSOC);
$resultList = array();
while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) {
	array_push($resultList,$row);
}

$sql1="select * from  institution  ";
$result1=mysqli_query($conn,$sql1);
// $row = mysqli_fetch_array($result,MYSQL_ASSOC);
$resultList1 = array();
while ($row1 = mysqli_fetch_array($result1,MYSQL_ASSOC)) {
array_push($resultList1,$row1);
	}
$dataArr=array();
$dataArr["news"]=$resultList;
$dataArr["institution"]=$resultList1;
//array_push($dataArr,$resultList);
//array_push($dataArr,$resultList1);
//print_r($row);
mysqli_close($conn);
echo json_encode($dataArr);



 ?>