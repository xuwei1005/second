<?php 
    include "../smsuni/uni.php";
   
	$tid = $_POST["tid"];
	$title = $_POST["title"];
	$img = $_POST["img"];
	$content = $_POST["content"];
	$type=$_GET["type"];
	// $sql1 = "select * from usertext where tid = $tid ";//用户名是字符串所以加引号
	$sql1 = "select * from ".$type." where tid = $tid ";
	$result = mysqli_query($conn,$sql1);
	$msg = "";
	$url = "load.php";
	// echo $img;
	
	//在添加没有问题
	if($result->num_rows>0){
		$row = mysqli_fetch_array($result);
		//排除查询的结果是自己
		if($row["tid"]!=$tid){
			
			$msg = '{"flag":false,"msg":"标题已存在"}';
			header("location:$url?msg=$msg&type=$type");
			return;
		}
	}
	if($_FILES["img"]["error"]>0)
	{
		echo "上传错误";
	}
	else
	{
		$newName=$_FILES["img"]["name"];
	
		move_uploaded_file($_FILES["img"]["tmp_name"], "../images/".$newName);
		$dataUpdate=date("Y-m-d");
	
	 $sql="update ".$type." set title='$title', imgurl='$newName', content='$content' where tid=$tid ";
	
		$flag=mysqli_query($conn,$sql);

	  if($flag){
	  	$msg = '{"flag":true,"msg":"更新成功"}';
	  }else{
	  	$msg = '{"flag":false,"msg":"更新失败"}';
	  }

	  echo mysqli_error($conn);
	
	  header("location:$url?msg=$msg&type=$type");
	}


 ?>