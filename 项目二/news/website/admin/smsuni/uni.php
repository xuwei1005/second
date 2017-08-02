<?php 
	define("HOST", "127.0.0.1");
	define("USERNAME", "root");
	define("PASSWORD", "");
	define("DBNAME", "news");
	define("MYSQL_CHARSET", "utf8");
	$conn = mysqli_connect(HOST,USERNAME,PASSWORD,DBNAME);
	if(!$conn){
		die("数据库连接失败！");
	}
	// 定义PHP和数据库的访问 通信字符集
	$mysql_charset_sql = "set names ".MYSQL_CHARSET;

	mysqli_query($conn, $mysql_charset_sql);


 ?>