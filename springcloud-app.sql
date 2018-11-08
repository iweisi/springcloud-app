-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.11-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 springcloud-app 的数据库结构
CREATE DATABASE IF NOT EXISTS `springcloud-app` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `springcloud-app`;


-- 导出  表 springcloud-app.system_dict 结构
CREATE TABLE IF NOT EXISTS `system_dict` (
  `id` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_dict 的数据：~2 rows (大约)
DELETE FROM `system_dict`;
/*!40000 ALTER TABLE `system_dict` DISABLE KEYS */;
INSERT INTO `system_dict` (`id`, `code`, `name`, `type`) VALUES
	('0e05c0f2-a0bc-4b75-8240-7500c9879a04', '2', '按钮', '1'),
	('a4c4df86-d72e-4cea-b90e-753440faf6f2', '1', '菜单', '1');
/*!40000 ALTER TABLE `system_dict` ENABLE KEYS */;


-- 导出  表 springcloud-app.system_resources 结构
CREATE TABLE IF NOT EXISTS `system_resources` (
  `id` varchar(50) NOT NULL,
  `pid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `sort` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_resources 的数据：~22 rows (大约)
DELETE FROM `system_resources`;
/*!40000 ALTER TABLE `system_resources` DISABLE KEYS */;
INSERT INTO `system_resources` (`id`, `pid`, `name`, `url`, `type`, `sort`) VALUES
	('0cf26ffd-88e9-42ca-91fb-374359e12f82', 'a9b97767-54ff-4477-a81a-274d6e2b5ce9', '菜单管理', '/system/resources', '1', '3'),
	('0ff729fc-a43c-4a5c-a2bf-07fbeefa2520', '13fd01f1-20d8-49fd-9630-6fb7f8539920', '删除', '/system/dict/delete', '2', NULL),
	('1', '0', '菜单', '/', '1', NULL),
	('1115d196-fd3a-4ca1-99c8-5452bae30c8f', '0cf26ffd-88e9-42ca-91fb-374359e12f82', '增加', '/system/resources/add', '2', NULL),
	('13fd01f1-20d8-49fd-9630-6fb7f8539920', 'a9b97767-54ff-4477-a81a-274d6e2b5ce9', '字典管理', '/system/dict', '1', '4'),
	('21e9a57d-b7a2-45b0-8359-cc21d636c0fa', '0cf26ffd-88e9-42ca-91fb-374359e12f82', '更改', '/system/resources/update', '2', NULL),
	('2b56b958-3b0d-46d4-8988-d7c5ae1d804b', 'a9b97767-54ff-4477-a81a-274d6e2b5ce9', '用户管理', '/system/user', '1', '1'),
	('32680760-3ad2-4ac5-bd2f-fca4917d8f74', '2b56b958-3b0d-46d4-8988-d7c5ae1d804b', '更改', '/system/user/update', '2', NULL),
	('51745327-1978-48ab-aa19-6986a3f628d7', 'c56d6e95-5515-492b-866a-b8555e7b647c', '添加', '/system/role/add', '2', NULL),
	('5e51df23-01b9-4cac-b07f-c5ea3efb057f', '9f58a18f-2055-4a37-8f5c-672ea75c8cff', '定时器', '/schedule/schedule', '1', ''),
	('63efc666-ee88-45f7-bdad-2b019c19eb1d', '0cf26ffd-88e9-42ca-91fb-374359e12f82', '列表', '/system/resources/list', '2', NULL),
	('652b3c26-5085-4739-94db-ebbbb1397acf', '2b56b958-3b0d-46d4-8988-d7c5ae1d804b', '添加', '/system/user/add', '2', NULL),
	('8d1d2815-d011-4da9-a66e-573a5f056f62', '13fd01f1-20d8-49fd-9630-6fb7f8539920', '添加', '/system/dict/add', '2', NULL),
	('8fec88df-50c5-4a5e-800e-621d203f7a55', 'c56d6e95-5515-492b-866a-b8555e7b647c', '删除', '/system/role/delete', '2', NULL),
	('93400178-2c2f-47de-9b30-5d126b33e197', '2b56b958-3b0d-46d4-8988-d7c5ae1d804b', '列表', '/system/user/list', '2', NULL),
	('9ee4dade-b3af-4664-82c8-4d712f231db4', '2b56b958-3b0d-46d4-8988-d7c5ae1d804b', '删除', '/system/user/delete', '2', NULL),
	('9f58a18f-2055-4a37-8f5c-672ea75c8cff', '1', '定时器', '/', '1', '2'),
	('a9b97767-54ff-4477-a81a-274d6e2b5ce9', '1', '系统管理', '/system', '1', '1'),
	('c01620cd-4845-4a4a-a72f-1524b3c54d24', '13fd01f1-20d8-49fd-9630-6fb7f8539920', '更改', '/system/dict/update', '2', NULL),
	('c56d6e95-5515-492b-866a-b8555e7b647c', 'a9b97767-54ff-4477-a81a-274d6e2b5ce9', '角色管理', '/system/role', '1', '2'),
	('c65e7c94-a3c1-43b7-a8c7-94e1d693f0b5', 'c56d6e95-5515-492b-866a-b8555e7b647c', '更改', '/system/role/update', '2', NULL),
	('ea7a58c3-74d2-45c1-8b66-974cd82d1fbd', '13fd01f1-20d8-49fd-9630-6fb7f8539920', '列表', '/system/dict/list', '2', NULL),
	('ecb6527f-0548-40f7-b92e-6719ff3f9556', '0cf26ffd-88e9-42ca-91fb-374359e12f82', '删除', '/system/resources/delete', '2', NULL),
	('f0e5351e-7291-4d41-87c2-3ebfc5388d7c', 'c56d6e95-5515-492b-866a-b8555e7b647c', '列表', '/system/role/list', '2', NULL);
/*!40000 ALTER TABLE `system_resources` ENABLE KEYS */;


-- 导出  表 springcloud-app.system_role 结构
CREATE TABLE IF NOT EXISTS `system_role` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_role 的数据：~2 rows (大约)
DELETE FROM `system_role`;
/*!40000 ALTER TABLE `system_role` DISABLE KEYS */;
INSERT INTO `system_role` (`id`, `name`) VALUES
	('f9127759-1116-4159-adcf-98dbe1d77576', 'JAVA');
/*!40000 ALTER TABLE `system_role` ENABLE KEYS */;


-- 导出  表 springcloud-app.system_role_resources 结构
CREATE TABLE IF NOT EXISTS `system_role_resources` (
  `id` varchar(50) NOT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `resources_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_role_resources 的数据：~26 rows (大约)
DELETE FROM `system_role_resources`;
/*!40000 ALTER TABLE `system_role_resources` DISABLE KEYS */;
INSERT INTO `system_role_resources` (`id`, `role_id`, `resources_id`) VALUES
	('0470edf8-3d75-4d3a-8a9f-97671ceb8ac9', 'f9127759-1116-4159-adcf-98dbe1d77576', '51745327-1978-48ab-aa19-6986a3f628d7'),
	('1e632059-5431-4c6f-a05b-83725227041d', 'f9127759-1116-4159-adcf-98dbe1d77576', '5e51df23-01b9-4cac-b07f-c5ea3efb057f'),
	('1fc4c2d7-b1e2-4cae-9eb1-381f3472157c', 'f9127759-1116-4159-adcf-98dbe1d77576', '63efc666-ee88-45f7-bdad-2b019c19eb1d'),
	('2c407ec0-37b9-43f0-a981-c44e59504d00', 'f9127759-1116-4159-adcf-98dbe1d77576', '9f58a18f-2055-4a37-8f5c-672ea75c8cff'),
	('2c7de5a7-1a44-485c-bb5c-234c9ce4dbae', 'f9127759-1116-4159-adcf-98dbe1d77576', 'c65e7c94-a3c1-43b7-a8c7-94e1d693f0b5'),
	('2fb34b59-6a9a-4105-9cf5-1972c9b0e4e3', 'f9127759-1116-4159-adcf-98dbe1d77576', '93400178-2c2f-47de-9b30-5d126b33e197'),
	('45ee1a46-3b7a-4552-8ef8-6112ba09a04f', 'f9127759-1116-4159-adcf-98dbe1d77576', '13fd01f1-20d8-49fd-9630-6fb7f8539920'),
	('5790b0df-4214-4bde-a46e-dea380e68def', 'f9127759-1116-4159-adcf-98dbe1d77576', '8d1d2815-d011-4da9-a66e-573a5f056f62'),
	('5a307baa-8175-4f4a-8852-56ed901f6e0d', 'f9127759-1116-4159-adcf-98dbe1d77576', '652b3c26-5085-4739-94db-ebbbb1397acf'),
	('65611808-0e69-4511-aef1-98da19852378', 'f9127759-1116-4159-adcf-98dbe1d77576', '1'),
	('68894ab7-95bb-4eb9-8466-a5843d91415b', 'f9127759-1116-4159-adcf-98dbe1d77576', '21e9a57d-b7a2-45b0-8359-cc21d636c0fa'),
	('6a4a9458-be9c-4564-b0c2-291bef46a12c', 'f9127759-1116-4159-adcf-98dbe1d77576', 'c56d6e95-5515-492b-866a-b8555e7b647c'),
	('7166ff96-8b25-4d4e-94e9-c4203c7b4aef', 'f9127759-1116-4159-adcf-98dbe1d77576', '0ff729fc-a43c-4a5c-a2bf-07fbeefa2520'),
	('71aecd9e-1fb9-45e7-8fd6-99ef108f88cd', 'f9127759-1116-4159-adcf-98dbe1d77576', '8fec88df-50c5-4a5e-800e-621d203f7a55'),
	('748ec915-bffd-4676-9d76-d1fc5e856601', 'f9127759-1116-4159-adcf-98dbe1d77576', '32680760-3ad2-4ac5-bd2f-fca4917d8f74'),
	('76bd22bf-58e9-4322-bc7c-bc7da421e52c', 'f9127759-1116-4159-adcf-98dbe1d77576', 'c01620cd-4845-4a4a-a72f-1524b3c54d24'),
	('76e03168-6fee-4ba1-80fe-865a8dc86dd5', 'f9127759-1116-4159-adcf-98dbe1d77576', '3b3b3284-eaab-48a5-a5e5-5da4e2c490af'),
	('85a6e8c6-e814-4fe2-b46b-90b3ca511d45', 'f9127759-1116-4159-adcf-98dbe1d77576', '9ee4dade-b3af-4664-82c8-4d712f231db4'),
	('9f47890d-017a-47a2-8893-b1c7890b97ed', 'f9127759-1116-4159-adcf-98dbe1d77576', 'ecb6527f-0548-40f7-b92e-6719ff3f9556'),
	('a776c3c7-904b-49b1-9663-ee1393bcd242', 'f9127759-1116-4159-adcf-98dbe1d77576', 'f0e5351e-7291-4d41-87c2-3ebfc5388d7c'),
	('be5c59b4-dbdc-4086-9da1-048398edbfec', 'f9127759-1116-4159-adcf-98dbe1d77576', '2b56b958-3b0d-46d4-8988-d7c5ae1d804b'),
	('cd877c09-3a2f-42bc-b748-200655587479', 'f9127759-1116-4159-adcf-98dbe1d77576', 'ea7a58c3-74d2-45c1-8b66-974cd82d1fbd'),
	('d0140cd5-9f41-40b8-a405-cea4f0dcdddc', 'f9127759-1116-4159-adcf-98dbe1d77576', 'a9b97767-54ff-4477-a81a-274d6e2b5ce9'),
	('d29c5eba-c4f2-4d55-9e75-2269e5203bf6', 'f9127759-1116-4159-adcf-98dbe1d77576', '00e70775-e85e-4e81-b24b-a4c442acf877'),
	('e0388c59-71f5-432f-9852-2e19bc3e934d', 'f9127759-1116-4159-adcf-98dbe1d77576', '0cf26ffd-88e9-42ca-91fb-374359e12f82'),
	('e7346a18-10af-46ad-bd49-26c70f6d5960', 'f9127759-1116-4159-adcf-98dbe1d77576', '1115d196-fd3a-4ca1-99c8-5452bae30c8f');
/*!40000 ALTER TABLE `system_role_resources` ENABLE KEYS */;


-- 导出  表 springcloud-app.system_user 结构
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_user 的数据：~0 rows (大约)
DELETE FROM `system_user`;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`id`, `username`, `password`) VALUES
	('62619962-c88c-4530-b424-ced43b30e1ea', 'wangsong', '532da1c5da9fb86bf61b2a63487f300c');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;


-- 导出  表 springcloud-app.system_user_role 结构
CREATE TABLE IF NOT EXISTS `system_user_role` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  springcloud-app.system_user_role 的数据：~2 rows (大约)
DELETE FROM `system_user_role`;
/*!40000 ALTER TABLE `system_user_role` DISABLE KEYS */;
INSERT INTO `system_user_role` (`id`, `user_id`, `role_id`) VALUES
	('1f38f972-8ea6-41be-b6a1-6385f3def0f3', '62619962-c88c-4530-b424-ced43b30e1ea', 'f9127759-1116-4159-adcf-98dbe1d77576');
/*!40000 ALTER TABLE `system_user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
