
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
<link rel="stylesheet" href="../css/pages.css">

<script src="../js/jquery.js"></script>
<script src="../js/template-web.js"> </script>
<script type="text/javascript" src="../js/pages.js"></script>
</head>
<body>

<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <?php $type=$_GET["type"]; ?>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href='../template/temadd.php?type=<?php echo $type; ?>' > 添加内容</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
    	<thead>
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        <th>图片</th>
        <th>标题</th>
        <th width="15%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      </thead>
       	<tbody>
		<?php
			
			include "../smsuni/uni.php";

			$type=$_GET["type"];
            
			// $countSql = "select count(1) size from usertext ";
			$countSql = "select count(1) size from ". $type ; 
			
		   $countResult = mysqli_query($conn,$countSql);
			$size=mysqli_fetch_array($countResult,MYSQL_ASSOC)["size"];
			$pageNow=1;
			if($_GET["pageNow"]!="")
			{
				$pageNow=$_GET["pageNow"];
			}
			$pageSize=5;
			
			$count = (int)($size/$pageSize);
			$temp = $size%$pageSize;
			$pageCount=$temp == 0? $count:($count+1);

	$arrJson=array();
	$arrJson["pageNow"]=(int)$pageNow;
	$arrJson["pageCount"]=$pageCount;
	$arrJson["type"]=$type;
	$param= json_encode($arrJson);

	$Start = ($pageNow-1)*$pageSize;

			
			echo "<script>window.onload=function(){createPage('#pageBox',".$param.")};</script>";
			 // $sql = "select * from usertext where 1=1 limit $Start,$pageSize ";
			   $sql = "select * from ".$type ." where 1=1 limit $Start,$pageSize ";
			$result =mysqli_query($conn,$sql);		
			while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)){

				$tid = $row["tid"];
				$title = $row["title"];
				$imgurl = "../images/".$row["imgurl"];
				$content=$row["content"];
				$updata=$row["updata"];
				echo "<tr>
        <td style='text-align:left; padding-left:20px;'>
            <input type='checkbox' name='id[]' value='' /> $tid</td>
        <td width='10%'><img src='$imgurl'  width='70' height='50' /></td>
         <td>$title</td>
         <td>$updata</td>
         <td>
             <div class='button-group'>
             <a class='button border-main' href='modify.php?tid=".$tid."&type=".$type."'>
                  <span class='icon-edit'></span> 修改</a>
                  <a class='button border-red' href='javascript:void(0)' onclick=\"return del(".$tid.",'".$type."')\" >
                       <span class='icon-trash-o>'</span> 删除</a>
             </div>
         </td>
       </tr> ";
			}

		?>

	</tbody> 
	
    </table>
    <div id="pageBox">
    </div>

  </div>
</form>


 <script type="text/javascript">

function del(tid,type){
	if(confirm("您确定要删除吗?")){
        window.location.href="delete.php?tid="+tid+"&type="+type;
	}else{
        alert(1);
    }
}
</script> 
</body>
</html>