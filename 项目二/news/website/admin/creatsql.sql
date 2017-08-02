drop database if exists news;
create database news;
use news;

-- create table newusers(
-- 	id int unique auto_increment primary key,
-- 	username varchar(20) unique not null,
-- 	password varchar(50) not null,
-- 	email varchar(50) not null
-- )default charset='utf8';

-- 用户表 
create table sysUser  
(
	id int auto_increment primary key,
	username varchar(20) unique not null,
	password varchar(30) not null,
	email varchar(50) not null
)engine=Innodb default charset=utf8;

-- 街区新闻表
create table usertext
(
	tid int auto_increment primary key,
	title varchar(100) not null,
	imgurl varchar(100) not null,
	content text not null,
	updata date not null

)engine=Innodb default charset=utf8;

-- 入驻机构表
create table institution
(
	tid int auto_increment primary key,
	title varchar(100) not null,
	imgurl varchar(100) not null,
	content text not null,
	updata date not null

)engine=Innodb default charset=utf8;

-- 街区活动表
create table newstreet
(
	tid int auto_increment primary key,
	title varchar(100) not null,
	imgurl varchar(100) ,
	content text not null,
	updata date not null

)engine=Innodb default charset=utf8;