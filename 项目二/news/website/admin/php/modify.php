<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">
<script src="../js/jquery.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改内容</strong></div>
  <div class="body-content">
  <?php
      
    include "../smsuni/uni.php";
     $tid=$_GET["tid"];
     $type=$_GET["type"];

     // $sql = "select * from usertext  where tid=$tid";
     $sql = "select * from ".$type."  where tid=$tid"; 
     $result =mysqli_query($conn,$sql);
     $row1 = mysqli_fetch_array($result,MYSQL_ASSOC);
      ?>
    <form method="post" class="form-x" action='update.php?type=<?php echo $type; ?>' enctype='multipart/form-data'> 
    <input type="hidden" name="tid" value='<?php echo $tid; ?>'>
      <div class="form-group">
        <div class="label">
          <label>标题</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value='<?php echo $row1["title"] ?>' name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
        <img src='<?php echo "../images/".$row1["imgurl"] ?>' alt=""><br>
        <input type="file" id="url1"  name="img" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />

        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>内容：</label>
        </div>
        <div class="field">
          <textarea name="content" class="input" style="height:200px; border:1px solid #ddd;"><?php echo $row1["content"];  ?></textarea>
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="clear"></div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body>
</html>