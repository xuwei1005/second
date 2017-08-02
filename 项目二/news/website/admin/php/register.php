<?php 
	include "../smsuni/uni.php";
	// session_start();
	$username = $_POST["name"];
	$password = $_POST["password"];
	$repassword = $_POST["confirm_password"];
	$email=$_POST["email"];
	
	$url="../template/register.html";
	
	 $sql = "select * from sysUser where username = '$username' ";
	 $result=mysqli_query($conn,$sql);
	
	 if($result->num_rows>0){
	 $msg = '{"flag":false,"msg":"用户名已存在"}';
	
	 header("location:$url?msg=$msg");
	
	return;
	}
	$sqlIn = "insert into sysUser values(null,'$username','$password','$email')";

	// echo $sqlIn;
	$flag = mysqli_query($conn,$sqlIn);
	if($flag){
		$msg = '{"flag":true,"msg":"注册成功"}';
	}else{
		$msg = '{"flag":false,"msg":"注册失败"}';
	}
	
	$ulr1="../template/login.php";
	
	header("location:$ulr1?msg=$msg");

	
 ?>