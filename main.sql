create database bookmark default character set utf8mb4 COLLATE utf8mb4_general_ci;
create table `item` (
  `id` int auto_increment,
  `title` varchar(100) default '' comment '标题',
  `logo_url` varchar(200) default '' comment '封面图片',
  `url` varchar(200) not null comment '书签URL',
  `intro` varchar(500) comment '描述',
	primary key(`id`)
) ENGINE=INNODB default charset=utf8mb4