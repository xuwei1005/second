
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery.js"></script>
    <?php
      session_start();
    //登录的校验
   // echo isset($_SESSION["user"]);
    if(!isset($_SESSION["user"])){
     // echo isset($_SESSION["user"]);
    header("location:login.php");
      return;
    }
    ?>

</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="../images/zc.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l">
  <a class="button button-little bg-green" href="../../website.html" target="_blank"><span class="icon-home"></span> 前台首页</a> 
   &nbsp;&nbsp;<a class="button button-little bg-red" href="login.php" id="exitBtn">
   
  
   <span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>

 
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul style="display: block">
    <li><a href="../php/load.php?type=usertext" target="right"><span class="icon-caret-right"></span>街区新闻</a></li>
    <li><a href="../php/load.php?type=institution" target="right"><span class="icon-caret-right"></span>入住机构</a></li>
    <li><a href="../php/load.php?type=newstreet" target="right"><span class="icon-caret-right"></span>街区活动</a></li>
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	 
	  $(this).toggleClass("on"); 
  });
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>

<div class="admin">
<span>
      
       <?php
       session_start();
         $user = $_SESSION["user"];
         if(isset( $user))
         {
           echo "欢迎您：".$user["username"]."管理员！";
         }
       
       ?>
       
  </span>
  <iframe scrolling="auto" rameborder="0" src="" name="right" width="100%" height="100%">
  
   
  </iframe>
  
</div>
 
</body>
</html>