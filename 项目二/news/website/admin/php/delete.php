<?php 
include "../smsuni/uni.php";
$type=$_GET["type"];
$tid=$_GET["tid"];
// $sql=" delete from usertext where tid=$tid ";
$sql=" delete from ".$type." where tid=$tid ";
$result=mysqli_query($conn,$sql);
$url = "load.php";

if($result>0)
{

	$msg = '{"flag":false,"msg":"删除成功"}';
	
	

}else
{
	$msg = '{"flag":false,"msg":"删除失败"}';
}

	header("location:$url?msg=$msg&type=$type");

 ?>