<?php 
	include "../smsuni/uni.php";

	$title=$_POST["title"];
    $type=$_GET["type"];
	$img=$_POST["img"];
	$content=$_POST["content"];
	
	{
		$newName=$_FILES["img"]["name"];
	
		move_uploaded_file($_FILES["img"]["tmp_name"], "../images/".$newName);
		$dataUpdate=date("Y-m-d");
		
		$sql="insert into ".$type." values(null,'$title','$newName','$content','$dataUpdate')";
		
		$flag=mysqli_query($conn,$sql);
		if($flag)
		{
			echo "存储成功";
		}
		else
		{
			echo "存储失败";
		}
		 header("location:load.php?type=$type");		
	}
 ?>