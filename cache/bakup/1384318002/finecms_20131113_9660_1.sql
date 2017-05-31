# finecms bakfile
# version:1.7.8 
# time:2013-11-13 12:46:43
# http://www.finecms.net
# --------------------------------------------------------


DROP TABLE IF EXISTS `fn_block`;
CREATE TABLE `fn_block` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `type` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_category`;
CREATE TABLE `fn_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(1) NOT NULL COMMENT '类别(1内容,2单页,3外链)',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `arrchildid` varchar(255) NOT NULL,
  `catname` varchar(30) NOT NULL COMMENT '栏目名称',
  `image` varchar(100) NOT NULL COMMENT '图片',
  `content` mediumtext NOT NULL COMMENT '单网页内容',
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `catdir` varchar(30) NOT NULL COMMENT '栏目URL目录',
  `url` varchar(100) NOT NULL COMMENT 'URL地址',
  `urlpath` varchar(255) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容数量',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为菜单',
  `categorytpl` varchar(50) NOT NULL,
  `listtpl` varchar(50) NOT NULL,
  `showtpl` varchar(50) NOT NULL,
  `setting` text NOT NULL,
  `pagesize` smallint(5) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `listorder` (`listorder`,`child`),
  KEY `ismenu` (`ismenu`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

INSERT INTO `fn_category` VALUES('1','1','1','1','0','21,1,24,25,22,23,62,26,15','1','39,40,41,43,44,45,42','导购','','','','','','news','/index.php?c=content&a=list&catid=1','','1','2','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('26','1','1','2','0','21,1,24,25,22,23,62,26,15','0','','案例','','','','','','案例','/index.php?c=content&a=list&catid=26','','2','8','1','category_image.html','list_image.html','show_image.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('32','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','智能手机','','','','','','zhinengshouji','/index.php?c=content&a=list&catid=32','','1','4','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:6:\"shouji\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('29','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','移动互联','','','','','','yidonghulian','/index.php?c=content&a=list&catid=29','','5','2','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:8:\"yidonghl\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('30','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','电子商务','','','','','','dianzishangwu','/index.php?c=content&a=list&catid=30','','4','3','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:8:\"dianzisw\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('31','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','硬件产业','','','','','','yingjianchanye','/index.php?c=content&a=list&catid=31','','0','5','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:10:\"yingjiancy\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('15','1','1','4','0','21,1,24,25,22,23,62,26,15','0','','下载','','','','','','xiazai','/index.php?c=content&a=list&catid=15','','0','9','1','list_down.html','list_down.html','show_down.html','array (\n  \'memberpost\' => \'0\',\n  \'url\' => \n  array (\n    \'use\' => \'0\',\n    \'tohtml\' => \'0\',\n    \'htmldir\' => \'html\',\n    \'list\' => \'\',\n    \'list_page\' => \'\',\n    \'show\' => \'\',\n    \'show_page\' => \'\',\n  ),\n)','20');
INSERT INTO `fn_category` VALUES('24','1','1','1','0','21,1,24,25,22,23,62,26,15','1','46,47,48,49,50','人物','','','','','','renwu','/index.php?c=content&a=list&catid=24','','0','3','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('25','1','1','1','0','21,1,24,25,22,23,62,26,15','1','51,52,53,54,55,56,57','推广','','','','','','tuiguang','/index.php?c=content&a=list&catid=25','','0','4','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('40','1','1','1','1','39,40,41,43,44,45,42','0','','手机','','','','','','shouji','/index.php?c=content&a=list&catid=40','','1','2','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:6:\"shouji\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('41','1','1','1','1','39,40,41,43,44,45,42','0','','数码','','','','','','shumacp','/index.php?c=content&a=list&catid=41','','0','3','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"shumacp\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('42','1','1','1','1','39,40,41,43,44,45,42','0','','汽车','','','','','','qichecp','/index.php?c=content&a=list&catid=42','','0','7','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"qichecp\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('43','1','1','1','1','39,40,41,43,44,45,42','0','','办公','','','','','','bangongcp','/index.php?c=content&a=list&catid=43','','0','4','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('44','1','1','1','1','39,40,41,43,44,45,42','0','','网络','','','','','','wangluocp','/index.php?c=content&a=list&catid=44','','0','5','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('45','1','1','1','1','39,40,41,43,44,45,42','0','','监控','','','','','','jiankongcp','/index.php?c=content&a=list&catid=45','','0','6','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('46','1','1','1','24','46,47,48,49,50','0','','移动互联网','','','','','','yidonghulianwang','/index.php?c=content&a=list&catid=46','','0','1','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:8:\"ydhulian\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('47','1','1','1','24','46,47,48,49,50','0','','电子商务','','','','','','dzshangwu','/index.php?c=content&a=list&catid=47','','0','2','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('48','1','1','1','24','46,47,48,49,50','0','','IT业界','','','','','','ityejie','/index.php?c=content&a=list&catid=48','','0','3','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('49','1','1','1','24','46,47,48,49,50','0','','渠道人物','','','','','','qdrenwu','/index.php?c=content&a=list&catid=49','','0','4','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('50','1','1','1','24','46,47,48,49,50','0','','IT精英','','','','','','itjingying','/index.php?c=content&a=list&catid=50','','0','5','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('51','1','1','1','25','51,52,53,54,55,56,57','0','','应用商店','','','','','','yingyongsd','/index.php?c=content&a=list&catid=51','','0','1','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('52','1','1','1','25','51,52,53,54,55,56,57','0','','广告推广','','','','','','adtuiguang','/index.php?c=content&a=list&catid=52','','0','2','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('53','1','1','1','25','51,52,53,54,55,56,57','0','','搜索推广','','','','','','sstuiguang','/index.php?c=content&a=list&catid=53','','0','3','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('54','1','1','1','25','51,52,53,54,55,56,57','0','','社交网络','','','','','','sjwangluo','/index.php?c=content&a=list&catid=54','','0','4','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('55','1','1','1','25','51,52,53,54,55,56,57','0','','杂志发行','','','','','','zzfaxing','/index.php?c=content&a=list&catid=55','','0','5','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('56','1','1','1','25','51,52,53,54,55,56,57','0','','会议活动','','','','','','hyhuodong','/index.php?c=content&a=list&catid=56','','0','6','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('57','1','1','1','25','51,52,53,54,55,56,57','0','','广告客户','','','','','','kehu','/index.php?c=content&a=list&catid=57','','0','7','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','2');
INSERT INTO `fn_category` VALUES('58','1','1','1','23','58,59,60,61','0','','关于我们','','','','','','aboutus','/index.php?c=content&a=list&catid=58','','0','0','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('59','1','1','1','23','58,59,60,61','0','','油菜花app','','','','','','app','/index.php?c=content&a=list&catid=59','','3','0','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('60','1','1','1','23','58,59,60,61','0','','《孙海渠道》','','','','','','shqudao','/index.php?c=content&a=list&catid=60','','1','0','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}','20');
INSERT INTO `fn_category` VALUES('61','1','1','1','23','58,59,60,61','0','','员工风采','','','','','','ygfengcai','/index.php?c=content&a=list&catid=61','','0','0','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('34','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','办公','','','','','','bangong','/index.php?c=content&a=list&catid=34','','0','7','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"bangong\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('35','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','数码','','','','','','shuma','/index.php?c=content&a=list&catid=35','','0','8','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:5:\"shuma\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('36','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','监控','','','','','','jiankong','/index.php?c=content&a=list&catid=36','','0','10','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:8:\"jiankong\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('37','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','网络','','','','','','wangluo','/index.php?c=content&a=list&catid=37','','0','9','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"wangluo\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('38','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','孙海专栏','','','','','','sunhai','/index.php?c=content&a=list&catid=38','','1','1','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:6:\"sunhai\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('39','1','1','1','1','39,40,41,43,44,45,42','0','','电脑','','','','','','diannao','/index.php?c=content&a=list&catid=39','','0','1','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"diannao\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('21','1','1','1','0','21,1,24,25,22,23,62,26,15','1','38,29,30,32,31,33,34,35,37,36','新闻','','','','','','xinwen','/index.php?c=content&a=list&catid=21','','11','1','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('33','1','1','1','21','38,29,30,32,31,33,34,35,37,36','0','','汽车电子','','','','','','qichedianzi','/index.php?c=content&a=list&catid=33','','0','6','1','category_news.html','list_news.html','show_news.html','a:10:{s:8:\"document\";s:7:\"qichedz\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}','20');
INSERT INTO `fn_category` VALUES('22','1','1','1','0','21,1,24,25,22,23,62,26,15','0','','动态','','','','','','dongtai','/index.php?c=content&a=list&catid=22','','0','5','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('23','1','1','1','0','21,1,24,25,22,23,62,26,15','1','58,59,60,61','中渠','','','','','','zhongqu','/index.php?c=content&a=list&catid=23','','4','6','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('62','1','1','1','0','21,1,24,25,22,23,62,26,15','0','','合作','','','','','','hezuo','/index.php?c=content&a=list&catid=62','','0','7','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:5:\"hezuo\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');

DROP TABLE IF EXISTS `fn_content`;
CREATE TABLE `fn_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

INSERT INTO `fn_content` VALUES('41');
INSERT INTO `fn_content` VALUES('42');
INSERT INTO `fn_content` VALUES('43');
INSERT INTO `fn_content` VALUES('44');
INSERT INTO `fn_content` VALUES('45');
INSERT INTO `fn_content` VALUES('46');
INSERT INTO `fn_content` VALUES('47');
INSERT INTO `fn_content` VALUES('48');
INSERT INTO `fn_content` VALUES('49');
INSERT INTO `fn_content` VALUES('50');
INSERT INTO `fn_content` VALUES('51');
INSERT INTO `fn_content` VALUES('52');
INSERT INTO `fn_content` VALUES('53');
INSERT INTO `fn_content` VALUES('54');
INSERT INTO `fn_content` VALUES('55');
INSERT INTO `fn_content` VALUES('56');
INSERT INTO `fn_content` VALUES('57');
INSERT INTO `fn_content` VALUES('58');
INSERT INTO `fn_content` VALUES('59');
INSERT INTO `fn_content` VALUES('60');
INSERT INTO `fn_content` VALUES('61');
INSERT INTO `fn_content` VALUES('62');
INSERT INTO `fn_content` VALUES('63');
INSERT INTO `fn_content` VALUES('64');
INSERT INTO `fn_content` VALUES('65');
INSERT INTO `fn_content` VALUES('66');
INSERT INTO `fn_content` VALUES('67');
INSERT INTO `fn_content` VALUES('68');
INSERT INTO `fn_content` VALUES('69');

DROP TABLE IF EXISTS `fn_content_1`;
CREATE TABLE `fn_content_1` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sysadd` tinyint(1) NOT NULL COMMENT '是否后台添加',
  `userid` smallint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin` (`modelid`,`status`,`listorder`,`updatetime`),
  KEY `catid` (`catid`,`status`,`updatetime`),
  KEY `member` (`userid`,`modelid`,`status`,`sysadd`,`updatetime`),
  KEY `status` (`status`,`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fn_content_1` VALUES('68','58','1','移动互联网产业联盟秘书长李易先生','/uploadfiles/image/sunhai/201311/9.jpg','移动互联网,秘书长','李易先生，以前的笔名叫大嘴，以炮轰It渠道一些烂事出名。李易是一个很有才华的人，以前是电脑商情报的记者，后来自己创办的大参考网站，在后来转型到移动互联网领域，现在在上海，运作创业公社。74年生，是一个资源...','/index.php?c=content&a=show&id=68','0','1','9','1','0','admin','1384258232','1384258476');
INSERT INTO `fn_content_1` VALUES('69','60','1','发行范围','/uploadfiles/image/201311/87.jpg','','《孙海渠道》以广州为核心，立足广东，辐射华南，为渠道客户带来最大的价值。','/index.php?c=content&a=show&id=69','0','1','3','1','0','admin','1384268868','1384268868');
INSERT INTO `fn_content_1` VALUES('67','58','1','香港建滔集团董事局董事|化工部总裁张广军先生','/uploadfiles/image/201311/84.jpg','化工部,香港,总裁','建滔集团已成为拥有4家上市公司、员工超过53000人，内地分厂超过60间的大型集团化企业，工厂遍布于全国17个市，市值700多亿人民币。至目前，建滔集团的覆铜面板产量位居世界第一，线路板产量已名列世界第七，成为中国最大的线路板生厂商。','/index.php?c=content&a=show&id=67','0','1','10','1','0','admin','1384256499','1384256675');
INSERT INTO `fn_content_1` VALUES('65','58','1','太平洋数码广场总经理谭台明先生','uploadfiles/image/201311/77.jpg','太平洋,总经理','广州太平洋电子科技广场是珠江三角洲以及华南地区的一个重要的电脑产品集散地，吸引着港澳台及东南亚的广大客户。','/index.php?c=content&a=show&id=65','0','1','7','1','0','admin','1384248977','1384248977');
INSERT INTO `fn_content_1` VALUES('66','58','1','港澳台电脑商会','/uploadfiles/image/201311/81.jpg','港澳台电脑商会','2010年，依托广东省电脑商会，只身前往香港，和香港电脑商会，澳门电脑商会以及台北电脑公会建立了联系，为召开两岸四地高峰论坛打下了坚实的基础。在以后，我们也多次取得工作联系。澳门电脑商会会长姚健池先生台北...','/index.php?c=content&a=show&id=66','0','1','7','1','0','admin','1384254920','1384258618');
INSERT INTO `fn_content_1` VALUES('63','61','1','户外拓展训练','/uploadfiles/image/201311/71.jpg','户外拓展','夏末秋初，中渠传媒全公司组织了一次拓展训练，地址在广州从化一个风景宜人的度假村里。大家参加着活动，欢声笑语，不亦乐乎！晚上，大家在一起吃烧烤，唱歌。...','/index.php?c=content&a=show&id=63','0','1','10','1','0','admin','1384240846','1384240846');
INSERT INTO `fn_content_1` VALUES('62','61','1','中渠销售部季度冠军胡瀚获奖励现场观看张学友演唱会','/uploadfiles/image/201311/69.jpg','张学友,演唱会,销售部','中渠传媒销售部季度冠军胡瀚获得公司奖励，现场观看张学友演唱会。','/index.php?c=content&a=show&id=62','0','1','12','1','0','admin','1384240426','1384240466');
INSERT INTO `fn_content_1` VALUES('60','40','1','移动电源的6个认识误区','uploadfiles/image/sunhai/201311/5.jpg','移动电源','现在很多小伙伴都在用移动电源，并且随时准备用移动电源给电量低的手机或者平板充电，可对于移动电源这种看起来蛮简单的东西却有很多不太正确的认识。虽然很多不正确想法不会造成什么危害，但是多少还是有一些损失的。','/index.php?c=content&a=show&id=60','0','1','4','1','0','admin','1384225248','1384225503');
INSERT INTO `fn_content_1` VALUES('59','29','1','移动互联网的新浪潮之巅：渠道的胜利','/uploadfiles/image/yidonghl/201311/5.jpg','移动互联网,胜利,浪潮','目前，国内手机桌面市场竞争非常激烈，但91桌面是唯一横跨iOS和Android的桌面软件。而得益于联姻百度后资源和流量的扩充，以及可以积累用户前端的应用商店和早期经营培养出来的用户高付费接受度，目前91桌面发展势头最为强劲。而就目前看来，作为市场排头兵的91桌面，其所能为用户带来的，已然是消费者对智能生活所畅想的全部。','/index.php?c=content&a=show&id=59','0','1','8','1','0','admin','1384181684','1384181684');
INSERT INTO `fn_content_1` VALUES('58','29','1','信息图：一张图了解中国移动互联网','/uploadfiles/image/yidonghl/201311/4.png','中国移动,互联网,信息','一张信息图：一分钟读网之移动互联网。图片上揭示移动互联网网民规模、网民接入方式、年龄、地域、广告支出、热门应用等方面的信息，方便消费者在最快的时间内了解目前中国移动互联网的概括。','/index.php?c=content&a=show&id=58','0','1','1','1','0','admin','1384181565','1384181565');
INSERT INTO `fn_content_1` VALUES('57','29','1','移动互联网 别“抛弃了”PC端的用户','/uploadfiles/image/yidonghl/201311/3.jpg','移动互联网,用户','等级制度只是目前微信可以利用的最实际的PC端的模式之一，还有其他很多PC端用户的使用习惯可以“CTRL+C”。微信可以“丢掉”PC端的思维模式，但是腾讯PC端遗留下来的用户习惯是一笔宝贵的财富，这是其他任何纯移动端产品所没有的优势，不过目前的微信有一点“手忙脚乱”的感觉，微信的开发还没开始呢，等级制度只是一个起点，还有谁能比腾讯更懂社交网络上的用户呢？','/index.php?c=content&a=show&id=57','0','1','1','1','0','admin','1384181337','1384181337');
INSERT INTO `fn_content_1` VALUES('56','29','1','马化腾七招求解移动互联网 微信欲建用户与商家的平台','/uploadfiles/image/yidonghl/201311/2.jpg','移动互联网,马化腾,用户','目前腾讯的业务主要仍在虚拟领域。马化腾设想，微信的公众平台可以成为用户与实体世界的一个连接点，“希望搭建一个连接用户与商家的平台，腾讯只提供规则，由用户和商家去自由创意。”','/index.php?c=content&a=show&id=56','0','1','4','1','0','admin','1384181064','1384181064');
INSERT INTO `fn_content_1` VALUES('55','29','1','移动应用未来展望：更轻的应用 更重的商业','/uploadfiles/image/yidonghl/201311/1.jpg','移动应用','随着UC应用中心、微信公众平台、支付宝公众服务平台、百度轻应用平台等轻量级应用平台的出现，我们看到了更多的应用开发和运营可能性。随着Web App开发者的不断增加，人们对于所谓Web App和Native App的“存废之争”有了更加理性的认识。开发者们看到了更多的可能性：移动互联网时代的产品可以有多种多样的表现形式，触及到用户的渠道有很多，盈利模式也可以变得更加多元化。','/index.php?c=content&a=show&id=55','0','1','0','1','0','admin','1384180731','1384180731');
INSERT INTO `fn_content_1` VALUES('49','38','1','你若安好，便是晴天','uploadfiles/image/sunhai/201311/3.jpg','晴天','孙海渠道|油菜花创始人孙海彬文《你若安好，便是晴天》，这是白落梅写的一本关于林薇因的人物传记，林徽因，一代风华的绝世佳人，才华横溢倾倒众生；让徐志摩、梁思成、金岳霖三大才子痴迷钟爱一生。今天这里要讲的...','/index.php?c=content&a=show&id=49','0','1','8','1','0','admin','1384178525','1384178728');
INSERT INTO `fn_content_1` VALUES('50','30','1','双十一电商发展不在营销形式 而在用户体验','uploadfiles/image/dianzisw/201311/1.jpg','电商,用户','又是一年双十一，从2009年开始，这一天更逐步从淘宝走向整个电商系统，发展为公认的网购狂欢节与时下最热的人造节日之一。“各位男士注意了，双十一当天，起床第一件事是打开老婆或女朋友的支付宝和网银，连续输入三...','/index.php?c=content&a=show&id=50','0','1','1','1','0','admin','1384179056','1384179056');
INSERT INTO `fn_content_1` VALUES('51','30','1','天猫双11半天总成交额突破200亿 实现下一个百亿在何时？','/uploadfiles/image/dianzisw/201311/3.png','成交额','一年一度的电商“双十一”在今日零点正式开始。11日凌晨5:42，阿里“双十一”的交易额突破百亿元大关。去年双十一超过100亿则用了13小时38分。根据位于杭州西溪的新总部园区会议室内的巨型电子屏幕显示的信息，阿里...','/index.php?c=content&a=show&id=51','0','1','2','1','0','admin','1384179336','1384179336');
INSERT INTO `fn_content_1` VALUES('52','32','1','国产智能机二次出海：联想欲并购 OPPO结盟CM','/uploadfiles/image/shouji/201311/1.jpg','智能机,联想,国产','在中国市场之外的全球市场，三星、苹果们才是绝对的焦点，国产智能手机仍然只能扮演存在感薄弱的配角。品牌问题或许就是国内智能手机出海需要解决的第一大问题或者前提，在品牌问题之后，还有诸如专利、地方政策等问题需要留意。现在联想和OPPO的尝试才刚刚迈出第一步，到底这一轮中国智能手机能否出海顺利，只能靠时间来证明。','/index.php?c=content&a=show&id=52','0','1','2','1','0','admin','1384179711','1384179711');
INSERT INTO `fn_content_1` VALUES('53','30','1','双十一盛景下的天猫危局','/uploadfiles/image/dianzisw/201311/4.jpg','','【普哥导读】天猫用革命者的姿态去碰触线下传统企业，日后还会遭到更大的抵制和反弹。O2O时代起步阶段，线下传统企业纷纷转投微信，天猫已先输一城；而天猫的另外两大对手京东、苏宁凭借强大的线下能力正在发起了对...','/index.php?c=content&a=show&id=53','0','1','2','1','0','admin','1384180058','1384180058');
INSERT INTO `fn_content_1` VALUES('54','30','1','阿里强推来往非为佯攻微信：为上市争取筹码','/uploadfiles/image/dianzisw/201311/5.jpg','阿里','创业14年来，用马云的话来说，阿里已经建成了一个生态系统，渗透到了每个中国人的生活之中：阿里旗下的一淘网成为消费者寻找商品和比价的入口，淘宝则聚拢了数以百万计的中小商家和数以亿计的商品，并为大商家齐集的天猫带去了足够的流量和人气，支付宝负责交易结算和信用担保','/index.php?c=content&a=show&id=54','0','1','2','1','0','admin','1384180456','1384180456');
INSERT INTO `fn_content_1` VALUES('61','60','1','《孙海渠道》杂志户外推广活动','/uploadfiles/image/201311/68.jpg','孙海渠道','《孙海渠道》的高速发展，也来源于坚持不懈的进行户外推广活动，不断扩大影响力，为客户带来最大的价值，能为客户带来利益，是我们前进的动力。','/index.php?c=content&a=show&id=61','0','1','12','1','0','admin','1384239287','1384253500');
INSERT INTO `fn_content_1` VALUES('45','59','1','油菜花点评，移动互联网最有商业价值的APP','http://www.pccn.com.cn/uploads/pictures/2013-11-07/96_1383824376.jpg','油菜花','油菜花是中渠传媒在移动互联网大数据时代，全新推出的一个手机APP应用。关于油菜花这个名字的来历，来源于成龙主演的电影《大兵小将》里面的主题歌，歌名就叫《油菜花》，讲叙了一个小兵只想回家种良田五亩的梦想，...','/index.php?c=content&a=show&id=45','0','1','56','1','0','admin','1383824430','1384236859');
INSERT INTO `fn_content_1` VALUES('44','60','1','《孙海渠道》IT渠道杂志','http://www.pccn.com.cn/uploads/pictures/2013-11-07/62_1383823141.jpg','孙海渠道','《孙海渠道》渠道杂志《孙海渠道》是一本IT渠道行业最专业的渠道杂志，是一本非常实用的IT同行内部调货指南，也是IT人员的从业手册，更是各大公司企业政府机关采购部门的IT采购宝典。《孙海渠道》始终坚持真实反映渠...','/index.php?c=content&a=show&id=44','2','1','19','1','0','admin','1383823270','1384236668');
INSERT INTO `fn_content_1` VALUES('47','26','2','封面客户','uploadfiles/image/201311/57.jpg','','服务好客户，为客户创造最大的利益是我们存在的价值！','/index.php?c=content&a=show&id=47','0','1','42','1','0','admin','1383881310','1383892619');
INSERT INTO `fn_content_1` VALUES('48','26','2','POS设备客户','uploadfiles/image/201311/11.jpg','pos设备','','/index.php?c=content&a=show&id=48','0','1','8','1','0','admin','1383889421','1383889421');
INSERT INTO `fn_content_1` VALUES('43','58','1','关于中渠','http://www.pccn.com.cn/uploads/pictures/2013-11-07/51_1383816647.jpg','中渠传媒','中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和...','/index.php?c=content&a=show&id=43','1','1','43','1','0','admin','1383814099','1384302684');
INSERT INTO `fn_content_1` VALUES('64','58','1','北京海龙资产经营集团公司董事长鲁瑞清先生','uploadfiles/image/201311/72.jpg','海龙','海龙电子城中关村店位于北京海淀区中关村大街1号，地处中关村核心商圈。自1999年开业以来，一直处于中关村IT卖场的领军位置，日客流量超过5万人次。海龙电子城自开业以来，平均年客流量超过千万人次，年销售额近20个亿，是京城百姓IT及数码产品的首选购物之地。海龙电子城荟萃了国内外各大知名品牌，具有规范的服务经营，成熟的供货渠道，稳定的客户群体，代表了当今中国IT产品的经营水平。','/index.php?c=content&a=show&id=64','0','1','5','1','0','admin','1384248148','1384248148');

DROP TABLE IF EXISTS `fn_content_1_down`;
CREATE TABLE `fn_content_1_down` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `version` char(20) DEFAULT NULL,
  `language` char(20) DEFAULT NULL,
  `os` text,
  `developers` char(20) DEFAULT NULL,
  `softsize` char(20) DEFAULT NULL,
  `downdata` text,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_content_1_extend`;
CREATE TABLE `fn_content_1_extend` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fn_content_1_extend` VALUES('43','58','','','1');

DROP TABLE IF EXISTS `fn_content_1_fang`;
CREATE TABLE `fn_content_1_fang` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `quyu` int(5) DEFAULT NULL,
  `shi` tinyint(2) DEFAULT NULL,
  `ting` tinyint(2) DEFAULT NULL,
  `wei` tinyint(2) DEFAULT NULL,
  `zhuangxiu` varchar(20) DEFAULT NULL,
  `louceng` tinyint(2) DEFAULT NULL,
  `zongceng` tinyint(2) DEFAULT NULL,
  `zujin` int(5) DEFAULT NULL,
  `zujinleixing` varchar(30) DEFAULT NULL,
  `mianji` int(20) DEFAULT NULL,
  `xiaoqu` varchar(50) DEFAULT NULL,
  `peizhi` text,
  `tupian` text,
  `dizhi` varchar(200) DEFAULT NULL,
  `dianhua` varchar(40) DEFAULT NULL,
  `ditu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`),
  KEY `quyu` (`quyu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_content_1_image`;
CREATE TABLE `fn_content_1_image` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `images` text,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fn_content_1_image` VALUES('47','26','深圳市三维度科技有限公司，宇川网络，三星电子，联想集团，建滔集团，丽影广场，名汇广场','a:2:{s:4:\"file\";a:15:{i:0;s:30:\"uploadfiles/image/201311/5.jpg\";i:1;s:30:\"uploadfiles/image/201311/9.jpg\";i:2;s:31:\"uploadfiles/image/201311/31.jpg\";i:3;s:31:\"uploadfiles/image/201311/33.jpg\";i:4;s:31:\"uploadfiles/image/201311/34.jpg\";i:5;s:31:\"uploadfiles/image/201311/35.jpg\";i:6;s:31:\"uploadfiles/image/201311/36.jpg\";i:7;s:31:\"uploadfiles/image/201311/37.jpg\";i:8;s:31:\"uploadfiles/image/201311/38.jpg\";i:9;s:31:\"uploadfiles/image/201311/39.jpg\";i:10;s:31:\"uploadfiles/image/201311/40.jpg\";i:11;s:31:\"uploadfiles/image/201311/41.jpg\";i:12;s:31:\"uploadfiles/image/201311/42.jpg\";i:13;s:31:\"uploadfiles/image/201311/43.jpg\";i:14;s:31:\"uploadfiles/image/201311/44.jpg\";}s:3:\"alt\";a:15:{i:0;s:9:\"三维度\";i:1;s:6:\"宇川\";i:2;s:6:\"丽影\";i:3;s:9:\"爱普生\";i:4;s:10:\"爱普生2\";i:5;s:12:\"北京丽日\";i:6;s:13:\"北京丽日2\";i:7;s:6:\"精灵\";i:8;s:6:\"立羽\";i:9;s:6:\"名汇\";i:10;s:6:\"三欣\";i:11;s:9:\"数博会\";i:12;s:6:\"先尚\";i:13;s:6:\"鑫蓉\";i:14;s:7:\"宇川2\";}}');
INSERT INTO `fn_content_1_image` VALUES('48','26','','a:2:{s:4:\"file\";a:6:{i:0;s:31:\"uploadfiles/image/201311/13.jpg\";i:1;s:31:\"uploadfiles/image/201311/14.jpg\";i:2;s:31:\"uploadfiles/image/201311/15.jpg\";i:3;s:31:\"uploadfiles/image/201311/16.jpg\";i:4;s:31:\"uploadfiles/image/201311/17.jpg\";i:5;s:31:\"uploadfiles/image/201311/18.jpg\";}s:3:\"alt\";a:6:{i:0;s:18:\"爱码电子副本\";i:1;s:18:\"高崎全部广告\";i:2;s:15:\"华迅科技-01\";i:3;s:9:\"巨冠-01\";i:4;s:15:\"森迪光电-01\";i:5;s:6:\"中顺\";}}');

DROP TABLE IF EXISTS `fn_content_1_item`;
CREATE TABLE `fn_content_1_item` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `jiage` decimal(10,0) DEFAULT NULL,
  `shuliang` mediumint(8) DEFAULT NULL,
  `chushou` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_content_1_news`;
CREATE TABLE `fn_content_1_news` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fn_content_1_news` VALUES('53','30','&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	【普哥导读】天猫用革命者的姿态去碰触线下传统企业，日后还会遭到更大的抵制和反弹。O2O时代起步阶段，线下传统企业纷纷转投微信，天猫已先输一城；而天猫的另外两大对手京东、苏宁凭借强大的线下能力正在发起了对天猫的逆袭，双十一盛景下，吃下“伟哥”换得一夜激情，但“全民公敌”天猫正陷入前所未有的危局之中。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/dianzisw/201311/4.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;今天双十一，有大批记者正在杭州见证天猫的“奇迹”，一个个辉煌的数据将掀起又一轮的激情戏。上周三笔者和一位记者朋友交流，主题是“天猫（淘宝商城）成立以来的成功与不足”。不可否认，脱胎于淘宝网的天猫已经成为阿里集团的支柱，它过去几年的成绩有目共睹；但实际上，近年来天猫双十一走向一轮又一轮的高潮，但盛景和热闹的背后，更多已现危机和危局。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;一、天猫的成绩&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;怎么称赞天猫的成绩都不为过，和它的线上竞争对手相比，天猫的交易额遥遥领先，它的入驻商户数大于其它几家的总和，且商户质量要更好；它正逐渐取代淘宝网成为网络购物的代名词。在笔者看来，下面三点是天猫最突出的成绩或最值得表扬的方面：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;对消费者端打造正品网购渠道。&lt;/strong&gt;这一点对于脱胎于淘宝网的天猫来说十分不易。淘宝网鱼龙混杂，从中遴选出优质商户，给消费者一个正品网购渠道，这需要天猫有大坚持大原则。淘宝网是中国网络购物发展早期具有国情特色的产物，天猫打造正品渠道，适应和推动了网民的消费升级。即便和国际同行美国的eBay和日本的乐天相比，天猫现在的逼格也要因此高不少。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;对商户端成为制度化销售平台。&lt;/strong&gt;这一点上天猫比其它电商的开放平台做得要更好。大多数商户对包括天猫在内的电商开放平台意见颇多，包括后台操作繁琐、不够人性化、扣点高、收费项目多、强制商家二选一等。但整体来说，天猫作为商户平台，它的制度化程度更高，按规范而不是“小二”的意愿处理平台和商户的关系。天猫的商户规范制度被后起的其它平台学习借鉴，这客观上推动了中国网络购物行业的制度化进程。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;孕育为数不少的原创网络品牌。&lt;/strong&gt;和前两年相比，“淘品牌”和“天猫原创”的声势有所变弱，这和线下强势品牌近年来纷纷触网有关。和传统强势品牌相比，“天猫原创”的整体实力要弱不少，它们也几乎很难走到线下；但作为网络品牌，“天猫原创”满足了部分网民的需要，它们的对市场的敏感度及应变能力催促了传统品牌的变革意识和进程。天猫孕育了不少有实力的网络品牌，它们代表着一种革新的力量。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;二、天猫的危局&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;今天开启的2013年度双十一，天猫的目标是“保三争五”，即保证300亿元以上，力争500亿元。而此次双十一，是天猫为阿里集团上市的最后一次大造势，所以不论最终的成交额，几乎毫无悬念天猫届时会宣传交易额超过500亿。但过于功利化、急于求成，盛景下的天猫其实已经开始出现危局，前几日家居大卖场联合抵制天猫只是冰山一角。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;1）内部：天猫“淘宝化”，生态残酷&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	天猫脱胎于淘宝网，整体摆脱了淘宝网的“假货水货”习性，但未改变其中的残酷生态。天猫很长一段时间是靠淘宝网在输血，直到现在都不能完全独立发展。天猫的从2011年后强势崛起，在很大程度上来说是侵蚀淘宝网、而不是天猫抢占淘外份额的结果。天猫作为平台式B2C（B2B2C模式），从概念上比淘宝网的C2C大集市更好讲故事。为了使天猫的尽快成长，阿里集团把淘宝网的资源快速向天猫转移，结果是天猫迅速膨胀。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;不断催肥，天猫长成巨型的胖子，看似十分强大，实则体虚；而随着天猫的商户数量迅速增多，天猫也不可避免地“淘宝化”，开始走上淘宝网质低价廉老路。目前，天猫已经有30万左右的商户，从数量上来说相当拥挤不堪。商户数量过多导致天猫的网上商城精品定位被削弱，不少真正“高大上”的品牌对入驻或发力天猫持谨慎态度；商户质量参差不齐，假货水货在所难免，天猫难以真正在用户中树立正品行货的形象。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	天猫商户数量多产生的另外一个后果是其平台生态越来越残酷。天猫早已遇到流量瓶颈，但商户数量一直增长，这样导致单个商户获得的流量资源呈下降趋势，它们的销售额也因此遭遇天花板。和淘宝网一样，天猫上的竞争过于激烈，真正能赚钱盈利的商家数量不多；商家数量过多，而天猫给大商家的扣点和资源要远远好于中小商家，广大中小商家在天猫的生存状况日益恶化，为了竞争，“铤而走险”很多时候是唯一的出路。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;2）外部：天猫的竞争对手强势逆袭&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;天猫最大的优势在于淘宝网，但淘宝网这个“奶妈”已经暮气沉沉，天猫进一步发展需要找到新的驱动力。阿里集团为应对京东、苏宁易购等B2C的竞争推出天猫，但天猫并没能成功阻止京东苏宁们的崛起。而在O2O时代背景下，一向以“革命者”形象示人的天猫没有团结线下实体商户，反而让腾讯微信捷足先登，获得了强势逆袭的机会。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;电商向重品类发展，天猫PK京东苏宁无优势&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;以网站流量和资金资源来看，天猫在中国所有的B2C里面首屈一指，其整体交易额一直保持领先。天猫和淘宝网一样，在服装、鞋帽、化妆品等轻品类上优势明显，但在3C数码、家电、家居等重品类上一直找不到着力点。从电商发展的大势来看，服装、鞋帽、化妆品等轻品类的线上渗透率已经进入平缓增长期，未来驱动中国电商进一步发展的必然是3C数码、家电、家居等重品类，而天猫在重品类方面的能力落后于京东苏宁们。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;由于缺少物流能力，天猫一直无法给用户提供标准化的服务。在“非标轻品类”上，天猫承担“淘”宝平台的角色，物流可依靠第三方完成；但在3C数码、家电、家居等“重品类上”，自建物流能力就变得格外重要。中国网络购物市场发展到现阶段，用户网购的驱动力已由便宜向便利转变。用户购买重品类商品时更追求标准化，这一方面体现在商品的标准化；二是说服务的标准化，其中配送速度的标准至关重要。相比天猫，京东苏宁们能给用户相对更加标准化的服务，符合用户一致性的需求期待。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;京东在3C数码品类上给消费者树立了正品行货的印象，而它的物流能力又能确保商品第一时间到达用户，竞争力强大；而苏宁在家电领域长期耕耘，凭借遍布全国的网点和专业服务能力在这一品类上优势明显。天猫一心想在重品类上逆袭京东苏宁，采取的措施之一就是建设“菜鸟网络”，但短期内难有成效；天猫也有考虑在3C数码等品类上要求商家统一只用顺丰速递，以图给消费者标准化的配送服务，但这势必会使本已生存艰难的商家更加艰难，尤其是在3C数码和家电这些毛利极低的品类。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;市场上普遍存在的一个误区，认为天猫作为平台电商赚钱，而京东苏宁易购这样的自营为主的电商长期亏损，所以前者代表着未来。但从社会整体效益、效率的角度看，天猫相比京东苏宁们其实处于劣势；天猫实现了更高的交易额，但用在上面的人力物力十倍于京东苏宁，这不仅仅是指天猫自身的员工，各个卖家为运营天猫店铺提供的工作人员也应包含在里面。在网购由便宜转向便利，由轻品类向重品类发展的趋势下，天猫的低效会制约其进一步发展。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;O2O时代天猫未能团结线下实体商户，微信捷足先登&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;关于电商和传统零售，业界流传甚广的是2012年底马云和王健林关于电商到2022年能否占50%的赌局，马云相当自信，认为“电子商务今天一万亿只是刚刚开始，现在所做的只是对传统零售渠道的变革……”。在精神领袖马云的带领下，阿里集团常年以“革命者”的姿态面对线下实体零售商，前不久就试图绕过卖场直接和家居品牌商合作搞O2O，结果是招致19家大卖场的联合抵制，最后天猫不得不做出妥协。过于功利化、急于求成，天猫遭家居大卖场联合抵制只是冰山一角。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;和美国电商市场上eBay联合线下实体零售商抗衡亚马逊不同，中国市场上阿里集团过于强大，又常以破坏性力量威逼线下传统零售商，导致后者常常对阿里集团怨声载道。实际上，自营B2C和线下零售商的竞争关系更大；作为纯平台的淘宝网和天猫，和线下零售商本可以更好地实现和平共处，但现实情况却是淘宝和天猫成了传统线下零售商眼中的“全民公敌”。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;天猫在PC端占尽优势，但在移动端微信正获得各大线下传统零售商的青睐，它们进军O2O时首选的合作伙伴是微信而不是天猫；多家上市商业零售企业因为和微信建立了O2O战略合作而出现股价涨停，市场反馈积极。微信和天猫对线下传统零售商的区别在于，微信以CRM 会员营销这个点切入，从内部改造和提升传统零售商的效率，双方合作大于竞争；而天猫是个销售平台，线下传统零售商纠结于处理线上线下渠道冲突，和天猫竞争大于合作。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;现在不好断言微信是否能在移动端再造一个“天猫”，但可以肯定的是微信目前是线下传统零售商开展O2O的首选。PC端电商更多指的是传统意义上的网络购物，而移动电商可拓展成“移动商务”，是一个远远大于PC端电商的市场，“移动商务”使线上线下的结合成为可能，O2O并不仅仅是概念。新一波的线下实体商户触网触电，微信捷足先登，占据了比天猫更有利的位置。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;&lt;strong&gt;三、天猫的救赎&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;毫无疑问，今天的双十一天猫依然会大张旗鼓放出一个又一个的“好消息”，将吸引足够的眼球、产生足够大的影响。同样，和去年一样，今年的双十一也将产生不小的泡沫，上百亿的虚假交易额将被计算在内。中国电商数据普遍造假，天猫成为电商泡沫的最大贡献者。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;天猫作为中国最大B2C电商平台，需要更客观更理性地看待自己，引领行业朝健康的方向发展。“一万亿交易额”不是炫耀宣传的资本，天猫在多大程度上真正帮助入驻商家更为重要；天猫自己获得巨额收入很重要，陪天猫玩的广大商户是否赚钱更加重要。一个生态能否可持续发展，不在于平台本身是否赚钱，而是看大多数的商户能否从中获利。很显然，天猫需要避免淘宝网的老路，建造更加健康的生态。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;同样，在处理线上线下关系时，天猫需要少一点侵略性，更多从合作共赢的角度出发。即便十年后，即便“菜鸟网络”建成，电子商务可以影响50%的零售，但电商不可能完成50%的零售交易。电商掌握了媒体话语权，看似声势浩大，但整体实力较传统零售依然羸弱；促成线上线下结合，寻求线上线下共赢是出路，天猫需要放弃唯我独尊的心态，与线下实体商家利益共享。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#F3F3F3;&quot;&gt;\r\n	&lt;span style=&quot;line-height:24px;&quot;&gt;　　&lt;/span&gt;天猫吸尽了淘宝网十余年积累的精华才刚刚成就今天的强大，和京东苏宁和微信相比却已经在失去未来。积极搞“菜鸟网络”，进展顺利也至少需要5年才能和京东苏宁的物流能力抗衡；大力推“来往”，想要取代微信的可能性几乎为零。阿里集团为了以高估值IPO，目前的所作所为是尽其能放大所谓的交易额优势，天猫承担阿里集团作为中国最大电商平台的角色，不得不为了短期效果而舍弃长远利益，吃下“伟哥”换得一夜激情；但其实，一次又一次的双十一盛景下，天猫已慢慢步入危局。（/完）\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('51','30','一年一度的电商“双十一”在今日零点正式开始。11日凌晨5:42，阿里“双十一”的交易额突破百亿元大关。去年双十一超过100亿则用了13小时38分。&lt;br /&gt;\r\n&lt;br /&gt;\r\n根据位于杭州西溪的新总部园区会议室内的巨型电子屏幕显示的信息，阿里双十一第一分钟交易额破亿，交易笔数接近34万笔。交易开始后6分钟，交易额突破10亿元。一小时内，阿里“双十一”的成交额总共为67亿，交易笔数超2500万笔。&lt;br /&gt;\r\n&lt;br /&gt;\r\n按照这一速度计算，今年阿里双十一的交易额预计将是去年的两倍多。最新的交易额目前已突破210亿。&lt;br /&gt;\r\n&lt;img src=&quot;/uploadfiles/image/dianzisw/201311/3.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n天猫方面不久前曾表示，如果“双十一”的销售额超过300亿，有可能会超过社会物流系统的承载能力而出现快递爆仓和用户收获延迟等问题。而阿里集团董事局主席马云也表示，由于担心网络堵塞，天猫淘宝可能在“双十一”当天适当限制网购流量。&lt;br /&gt;\r\n&lt;br /&gt;\r\n而今日凌晨，除了零点过后由于流量过大而造成轻微网络拥堵外，淘宝网和天猫的访问一直较为稳定。 同样稳定的，是聚石塔的战略合作伙伴——厦门又一城软件(http://www.u1city.net)。从11月9日开始，又一城外派驻点部队边陆续到达客户的前线战场，从提前两天的备战开始一直陪伴在顾客身边。今日凌晨，除了电商企业，又一城作为国内知名服务商也与客户一起通宵达旦。据了解，知名男装电商品牌千纸鹤，在采访中表示，又一城是福建省内唯一实现对接圆通热敏打印机的系统，为他们企业的打单效率添砖加瓦。昨晚，千纸鹤短时间内冲破千万大关，战绩显赫！&lt;br /&gt;\r\n&lt;br /&gt;\r\n双十一支付宝总成交额还在不断飙升，笔者预计300亿大关很快就能实现！&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('52','32','&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/shouji/201311/1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	经过几年的征战，国产品牌已逐步适应了智能手机市场竞争的节奏，并在中国市场上打下了半壁江山。但在中国市场之外的全球市场，三星，苹果们才是绝对的焦点，国产智能手机仍然只能扮演存在感薄弱的配角。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	作为第一批出征海外的智能手机代表，中兴、华为两大公司凭借过去多年与全球各大运营商的良好合作，获得了大量的中低端手机订单，迅速成长为全球智能手机市场的前几位，但这条路对其他国产智能手机厂商借鉴意义并不大。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	一言以蔽之，海外市场尤其是欧美市场，运营商占据着绝对统治地位，但中国智能手机厂商却很难获得海外各大运营商的垂青。在这种情况下，华为、中兴之外的中国智能手机厂商该如何走出国门？\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	在多数厂商保持观望态度时，联想和OPPO两家公司已经开始从不同的角度寻求突破海外市场的方式，尽管具体做法完全不同，但两家公司均不约而同的选择在品牌上增加附加价值，以期寻求突破。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	&lt;strong&gt;联想：发力特型产品 尝试并购知名手机品牌&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	在本月初的Yoga平板媒体沟通会上，联想集团董事局主席兼CEO杨元庆透露，联想智能手机将在2015年进入成熟市场，要留出一年的时间多做一些准备。联想智能手机的品牌形象在年轻一代当中还要重新建立。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	事实上，Yoga平板本身就是联想进军成熟市场的一次预演，这款形状与市场常规平板不同的产品并不是Yoga笔记本团队的产品，而是联想手机团队的作品。据悉，这款被联想视为平板产品先锋的产品将在多个国家同步上市，其中就包括联想智能手机未来将要进军的欧美市场。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	有业内人士向腾讯科技表示，联想智能手机进军像成熟市场时，很难沿用在中国市场上的机海战术，只能依靠单款旗舰产品来进行市场突破。但他同时表示，联想在成熟市场上知名度尚无法与一线品牌相比，即使单款产品优秀，也很难引爆市场。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	对于这个问题，联想显然早有考虑，据来自投行界的消息显示，联想此前确实在参与了对黑莓的竞购。尽管并购黑莓今天已不现实，但联想确实有意通过并购来解决智能手机品牌上的短板。随着联想近期融资15亿消息的传出，展开收购的可能性也在大幅增加。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	&lt;strong&gt;OPPO：结盟CM公司 重塑专业形象&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	对于Steve Kondik这个名字，外界往往呈现两极分化的态度，一种是从未听说，另一种是崇拜已久。这位CyanogenMod公司的创办人在业内一直被誉为安卓系统定制之父，包括小米在内第三方ROM都在不同层面上参考或使用了CM的代码，罗永浩也曾在锤子ROM发布会上高调的向其致敬。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	没有多少人知道，Steve和CM公司已是OPPO在海外最重要的合作伙伴之一。早在四个月前，OPPO Find 5就成为了国内首款CM官方适配的手机，随后OPPO也作为国内唯一一家厂商受邀出席了CM举办的XDA开发者论坛大会，未来OPPO和CM间还将有更大的合作公布。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	据腾讯科技了解，OPPO的海外业务分为总部直接管理的欧美市场和由代理商控制的包括印尼、俄罗斯、越南、泰国等地区市场。在欧美市场之外，OPPO往往愿意以时尚、明星作为推广旗舰产品的主要手段，但在美欧市场，OPPO则借助CM先行吸引了智能机发烧友和极客人群。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	显然，OPPO试图在美欧市场打造出专业和发烧的品牌形象，这和此前OPPO在海外市场凭借蓝光DVD获得的良好口碑一脉相承。事实上这一做法已经取得了一定效果，OPPO已经在海外智能手机发烧友群体中产生了相当的知名度。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	&lt;strong&gt;品牌已成国产智能机最大短板&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	据业内人士透露，美欧手机销售依然主要依靠运营商渠道，而运营商渠道更倾向于与长期客户进行合作，想要进入当地运营商的集采名单的前提就是需要拥有独特的品牌价值和目标人群，这也是联想和OPPO将品牌作为进军成熟市场第一要务的原因。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	联想和OPPO两家公司均选择在品牌上做足文章，作为进军成熟市场的突破口。这样的不约而同并不令人意外，即便是在美国智能手机份额已经排名进入前四的中兴公司，也在近期通过独家签约NBA火箭队，来加强自己在北美市场的品牌影响力。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:Arial, 宋体;font-size:14px;background-color:#FFFFFF;text-indent:2em;&quot;&gt;\r\n	显然，品牌问题或许就是国内智能手机出海需要解决的第一大问题或者前提，在品牌问题之后，还有诸如专利、地方政策等问题需要留意。现在联想和OPPO的尝试才刚刚迈出第一步，到底这一轮中国智能手机能否出海顺利，只能靠时间来证明。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('49','38','&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&lt;img src=&quot;uploadfiles/image/sunhai/201311/3.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	孙海渠道|油菜花创始人 &amp;nbsp;孙海彬 文 &amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp;《你若安好，便是晴天》，这是白落梅写的一本关于林薇因的人物传记，林徽因，一代风华的绝世佳人，才华横溢倾倒众生；让徐志摩、梁思成、金岳霖三大才子痴迷钟爱一生。今天这里要讲的却是一个小笑话：\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 小明把他家电视机给拆开了，他爸回来后，对小明说：“你若安好，便是晴天；你若安不好，老子打死你！”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp;《新快报》最近被组合拳打得半死。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 首先是陈永洲承认收钱发失实报道，央视迅速报道，新华社跟进。其次是广东省新闻出版广电局做出查处决定，吊销陈永洲的记者证，责成新快报社全面整顿。然后是羊城晚报集团免去《新快报》社长，总编辑李宜航和副总编马东瑾职务。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 新快报喊冤的结果是让舆论的注意力成功的从警察跨省抓捕转移到记者收钱报道黑幕。警察笑了，记者哭了。新快报你这是何苦，自身有问题，干嘛要咬人？更何况是中联重科这样的人物，三一都惹不起的主。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 中联重科，一个巴掌就把你拍死了。关键是，人家拍死你，没让人觉得你是冤死的。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 穷骨头还真不是随便人都可以说的，湖南人曾国藩可以说。身正才会有骨气，新快报还是不错的，好好整顿下，依然是条好汉。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#3E3E3E;font-family:Helvetica, \'STHeiti STXihei\', \'Microsoft JhengHei\', \'Microsoft YaHei\', Tohoma, Arial;font-size:16px;background-color:#F8F7F5;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 顺便说一下，你们那陈记者太没骨气了，没见过世面，一进去，全部把你们都卖了。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('50','30','&lt;p&gt;\r\n	&lt;img src=&quot;uploadfiles/image/dianzisw/201311/1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	又是一年双十一，从2009年开始，这一天更逐步从淘宝走向整个电商系统，发展为公认的网购狂欢节与时下最热的人造节日之一。&lt;br /&gt;\r\n&lt;br /&gt;\r\n“各位男士注意了，双十一当天，起床第一件事是打开老婆或女朋友的支付宝和网银，连续输入三次错误密码再去上班，切记。”这条段子在网络上遭到疯转；更有一厦门公司放假半日，以方便员工进行秒杀抢购……即使不看线上线下铺天盖地的双十一广告，只看公众对这个日子所表达的关注及营造出的热烈氛围，已可知这个在四年前才诞生的、由淘宝系发起的网购促销日已经发展为一个全民共享的消费狂欢节。&lt;br /&gt;\r\n&lt;br /&gt;\r\n首创双十一的淘宝创始人马云对李克强总理说，双十一是“中国消费者日”。如果就产生的消费而言，这一天当之无愧。双十一主战场天猫与淘宝网，在去年这天凌晨的第一分钟，已有1000万人次上线抢购；去年总销售额实现了创纪录的191亿元，相当于当天全国社会零售总额的30%，而有预计指今年销售额将突破300亿元。&lt;br /&gt;\r\n&lt;br /&gt;\r\n这四年，双十一在认知度不断提升的同时，其模式也在不断改变、成长。一开始的双十一，只是通过标榜超低价促销暴力引流。实际上，用低价策略造就狂欢式促销，是传统时代在客户沟通渠道不畅时常用的低成本营销手段，但电商有畅通的沟通渠道，只为创造一个销售高峰意义不大。消费者经过三年双十一的“洗礼”以及超卖、物流爆仓等不佳体验后，已趋于理性，纯粹低价创造冲动购买的策略效果减弱。而更重要的是，当双十一的效应与影响力形成后，就不需要以低价吸引关注，可以反过来利用双十一的影响力集中营销，创造口碑甚至打造品牌。除了用预售应对超卖及物流业的严阵以待等提升用户体验外，商家的社会化营销明显增加，有商家在电视、地铁甚至地标建筑的玻璃幕墙投放广告，这对于从淘宝起家的淘品牌提升大众知名度尤为重要。而在双十一过后，商家可通过数据整理挖掘优质客户进行精准的二次营销；平台亦可通过活动数据分析未来电商行业的趋势与走向。双十一的变化，与电商行业从大数据平台到精准化细分市场的发展趋势是一致的。&lt;br /&gt;\r\n&lt;br /&gt;\r\n从纯粹的卖货渠道到打造品牌的平台，双十一是非常成功的人造节日。她的成功，有赖于11月的法定节日空缺，消费力难有其他出口，及以光棍节为噱头对网购主力军年轻消费群体的精准打击，但归根结底还是有赖于消费者生活模式与购买习惯的改变。这也是为什么在没有光棍节的美国，也成功造就了网购狂欢节“网络星期一”。互联网改变了世界，依托于互联网的电商与网购也同时改变着世界的消费习惯，这种改变是全球性的。网购突破了空间限制，降低了门店成本，其便利性令消费者迅速上瘾。尤其是近几年，以百货公司为首的实体零售店受到极大冲击，有网购习惯的消费者因价格与消费体验，而对这一渠道表现出极大的依赖与忠诚，即使是购买在电商平台上有官方网店的品牌，他们亦倾向于在门店试穿、试用后通过网络下单。&lt;br /&gt;\r\n&lt;br /&gt;\r\n有传统零售商呼吁抵制双十一，因为通过淘宝天猫参加活动，不仅不能掌握核心客户，还会让门店沦为“线下体验店”而加速用户流失。但零售的线上线下合流显然是大势所趋，若能有去中心化的O 2O平台(O nline To O ffline)，让传统零售商自主管理客户与销售，则可发挥无边界线上流量与不可替代的显现体验优势。传统零售商将有望扳回一城，亦可提升消费者的购买体验。&lt;br /&gt;\r\n&lt;br /&gt;\r\n无论是否承认或接受，大众消费习惯已被电商改变，且这个趋势将逐渐增强。线上线下的合流或C2B按需定制模式若可实现，又将让购买行为再上一个台阶。这些可能性令人期待，能否成真却仍是未知之数，可以肯定的是，未来的电商发展关键并不在于噱头或营销形式的多元，而在于以质量与服务造就的用户体验提升。&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('45','59','&lt;p&gt;\r\n	　　油菜花是中渠传媒在移动互联网大数据时代，全新推出的一个手机APP应用。&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;img src=&quot;/uploadfiles/image/201311/63.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　关于油菜花这个名字的来历，来源于成龙主演的电影《大兵小将》里面的主题歌，歌名就叫《油菜花》，讲叙了一个小兵只想回家种良田五亩的梦想，这个手机应用取名油菜花，寓意我们在IT渠道行业里面，先脚踏实地，用心种好这五亩田。一株油菜花很普通，但成片的油菜花在一起竞相开放，则是阳春三月里最漂亮的风景。IT渠道商家，大部分都是中小型公司，虽然普通，但都有自己的梦想，当这些商家因为某一个信念聚集到一起的时候，就会成为最美丽的风景，油菜花应用，在为了这片最美的景色而努力。当然，油菜花还含有有才华的意思，寓意一群虽然普通但是有才华的人为了梦想而在努力，还有：油菜花=有财发，虽然有点俗，但接地气。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　油菜花应用的根本目的，就是要为消费者提供方便，成为消费者信任的推荐产品推荐商家的平台。在这个平台上，消费者随时能找到产品行家咨询，当他信任这个商家，信任这个产品时，他用手机直接在APP里面点击网店页面直接购买了。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　举个例子，你的老式笔记本用了4,5年，实在是看着厌烦，你想必须要换一台新的了。新的笔记本应该是时尚的，有面子的，当然性价比也要高。你需要解决的第一个问题是：我需要买哪个品牌哪个型号的笔记本，最符合我的需求。第二个问题是：我找谁购买。第三个问题是：售后服务和技术支持找谁最合适？也许你会想，几千元的电脑，上京东，找个型号，喜欢就可以，不用这么麻烦。是的，不把钱当钱的人都这么想，但真正会过日子的人，还是会慎重些。假如，你想买辆小汽车呢？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　这个时候，绝大部分消费者会去研究产品，了解产品参数，了解产品性能，兄弟姐妹们，我只想问个问题，你不是靠卖这个产品吃饭，只是为了买它，为什么要花这么多时间来研究你购买的产品？你对产品越了解，花的时间就越多，你又真的能确定这个产品就是你所需要的？我们经过自己的研究判断，购买的大部分产品在角落里睡大觉，这样的经历还少吗？我们挣钱很辛苦，但我们一如既往的购买了大量的闲置产品。因为你不再相信产品销售员的鬼话，他们只想拼命把产品卖给你，而不管你的真实需求，所以你要自己研究。你甚至会说，这就是生活。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　是的，这是生活，但我们可以变得更好。我们的时间可以更自由，你只需要身边有一个值得信任的产品顾问就足够了。他能站在你的角度，客观中立的帮你推荐最合适的产品给你，包括电脑，相机，办公产品，甚至小汽车。他不靠卖产品给你挣差价的钱，所以，你们之间不是对立的。假如说你身边有这么一个朋友，在IT这个行业待了10多年，能帮你推荐任何IT类，消费电子类产品，你应该会因为有这么一个朋友的存在而感到高兴吧？当他推荐的产品能合你的心意的时候，你应该还会请他去一个比较有情调的地方去喝喝小酒，吃个饭，不是吗？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　油菜花值得信任吗？时间久了，自然就知道了，油菜花自有它的运营之道。服务也方便吧？但油菜花的专长并不仅仅只有这些。油菜花应用能让你咨询整个行业的专家，只要你愿意。油菜花将本地做得好的商家清晰的展示到你的面前，其他用户对这些商家的意见你也能清晰的看到。看中了哪个商家，直接找他购买吧。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　油菜花应用能推荐最合适的商家给您，他们是否合适，评判标准最主要的2条：对产品了解是否专业，服务是否贴心。这个时候，油菜花成为了你购买和维修IT产品时找周边值得信任的商家的工具。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　油菜花应用当然也是一个同行报价平台，你修改了产品的价格，收听你价格的同行马上就知道。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　还有很多其他有意思的功能，下载一个试一试，就知道了，下载地址：&lt;a href=&quot;http://app.pccn.com.cn&quot;&gt;http://app.pccn.com.cn&lt;/a&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　油菜花APP应用，还在油菜地里，刚刚才发芽，但已经露出了蓬勃的生机。精心呵护，需要更多的人手，我们也非常欢迎你的加盟。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	　　虽然还是小小油菜花，但依然可以变成传奇。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('64','58','&lt;p&gt;\r\n	鲁瑞清，人称老鲁，北京海龙资产经营集团公司董事长，2009年和他相识于东莞国际电脑产品博览会，至今保持联系。&lt;img src=&quot;/uploadfiles/image/201311/74.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	那时我受广东省电脑商会委托，策划两岸四地IT高峰论坛，邀请鲁董作为演讲嘉宾，鲁董欣然接受。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/75.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	在这之后的联系中，建立了深厚的友谊，鲁董有次去台湾，还特意发短信是否需要邀请其他业界大佬。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/76.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	鲁董一直邀请我北上北京，可惜到现在都未能成行。但是，作为北京中关村标志性人物，在北京开拓市场，离不开鲁董的大力支持。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	鲁董写了一本书《中关村一号》，记录了海龙跌宕起伏的历史，值得一读。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('43','58','&lt;p&gt;\r\n	中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。 中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和省事。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;uploadfiles/image/201311/b769afcae56b9faaa3e8e307b4411bcb.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒地处广州市最繁华的商业圈，摩登百货，地中海酒店，太古汇，万菱汇，正佳广场，天河城，依次相邻，拔地而起，共同组成了南中国最繁华地带，这里也是华南IT产品集散地。公司在甲级写字楼展望数码广场18楼办公。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;uploadfiles/image/201311/bb3c12a6e18aa25b608fd7766da88ec6.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒有三大平台产品：《孙海渠道》杂志，油菜花app手机平台和油菜花点评网。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒创始人孙海彬先生为暨南大学工商管理硕士，在互联网和IT行业有11年的行业经验，思维睿智，经验丰富。同时中渠传媒有非常优秀的设计团队和技术团队，能为客户提供最优秀的解决方案。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; 中渠的宗旨是帮我们的客户在IT产品渠道领域，做出最有效的品牌推广和带来最有价值的经销商。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;uploadfiles/image/201311/f1e7b876b20728dab37290998c808218.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	微信公共账号：Ucaihua\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	办公电话：020-62805066，62805055\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	网址：www.Ucaihua.cn&amp;nbsp;\r\n&lt;/p&gt;\r\n广州市天河区石牌西路8号展望数码广场18楼15，16房');
INSERT INTO `fn_content_1_news` VALUES('44','60','&lt;p&gt;\r\n	&lt;strong&gt;《孙海渠道》渠道杂志&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	《孙海渠道》是一本IT渠道行业最专业的渠道杂志，是一本非常实用的IT同行内部调货指南，也是IT人员的从业手册，更是各大公司企业政府机关采购部门的IT采购宝典。《孙海渠道》始终坚持真实反映渠道现状，专业团队运作，为客户提供最准确最完整最专业的行业资讯。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	《孙海渠道》从2005年创刊开始，到今天已经走过了8个年头，平均一个季度出刊一期，已经出刊37期。覆盖整个华南地区，影响超过10万行业人士。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;http://home.pccn.com.cn/uploadfiles/image/201311/33.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;杂志特点：全面,&lt;/b&gt;&lt;b&gt;准确,&lt;/b&gt;&lt;b&gt;快速,&lt;/b&gt;&lt;b&gt;便捷&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;b&gt;全面:&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	绝大部分&lt;span&gt;IT&lt;/span&gt;产品&lt;span&gt;,&lt;/span&gt;都可以通过&lt;span&gt;&amp;lt;&amp;lt;&lt;/span&gt;孙海渠道&lt;span&gt;&amp;gt;&amp;gt;,&lt;/span&gt;找到该产品在本区域的总代&lt;span&gt;,&lt;/span&gt;分销商，零售商，官方售后点，维修店。因为&lt;span&gt;IT&lt;/span&gt;行业产品种类繁多&lt;span&gt;,&lt;/span&gt;更新速度快&lt;span&gt;,&lt;/span&gt;所以即使&lt;span&gt;IT&lt;/span&gt;专业资深人士也很难不借助工具就可以迅速找到客户所需要的产品&lt;span&gt;.&lt;/span&gt;《孙海渠道》能马上为您提供所需的资讯。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;准确&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	每一期刊物推出&lt;span&gt;,&lt;/span&gt;里面的每一条资讯都经过我们工作人员的认真仔细跟踪核对及更新&lt;span&gt;,&lt;/span&gt;以确保资讯准确无误&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;便捷&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	按产品类型详细分类&lt;span&gt;,&lt;/span&gt;通过目录迅速寻找所需产品&lt;span&gt;. 1/4A4&lt;/span&gt;大小&lt;span&gt;,&lt;/span&gt;方便随身携带&lt;span&gt;,&lt;/span&gt;无论您在办公室&lt;span&gt;,&lt;/span&gt;还是在家里&lt;span&gt;,&lt;/span&gt;无论是在送货途中&lt;span&gt;,&lt;/span&gt;还是在回家的车上&lt;span&gt;;&lt;/span&gt;无论是放在手提袋中&lt;span&gt;,&lt;/span&gt;还是放在口袋里&lt;span&gt;,&lt;/span&gt;您随时都可以用上它&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;快速&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	每三个月出一期&lt;span&gt;,&lt;/span&gt;确保准确把握最新的市场动态&lt;span&gt;.&lt;/span&gt;确保把最新&lt;span&gt;,&lt;/span&gt;最准确信息带给用户&lt;span&gt;.&lt;/span&gt;极大的降低用户的时间成本&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;欢迎各大厂商朋友选择中渠传媒整合资源优势做渠道品牌推广！\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;联系方式：020-62805066&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	微信公众账号：&lt;span&gt;Ucaihua&lt;/span&gt; \r\n&lt;/p&gt;\r\n广州市天河区石牌西路8号展望数码广场18楼15，16房\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('54','30','&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/dianzisw/201311/5.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	今天，电商“双11”光棍节促销大战正式打响了。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n　　“你们创造了一个消费时点！”10月31日，国务院总理李克强在经济形势座谈会上为马云点赞。去年双11的时候，马云与史玉柱、沈国军等三十多位企业家好友在茶馆小聚，谈笑间，淘宝/天猫在一天内完成了191亿元的惊人销售额。马云说，今年估计要突破300亿元。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　11月11日当天，各大电商都将经历一场大考。然而跟以往不同的是，当今年的双11过去之后，业界也许将不再关心销售额又创了多少新高，而会去深究另外一些数字：移动客户端完成了多少的销售额，线下门店带来了多少销售额，通过支付宝钱包又完成了多少销售额。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　●面对来自移动互联网的颠覆性力量，即使身为巨头也不得不未雨绸缪、如履薄冰&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　●强推来往，马云团队并非只是佯攻微信，他们也在为上市争取筹码&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　阿里“动”起来&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　“我和微信的缘分尽了，再过三天我就要关掉账户了，感谢微信哥哥给了我那么多的快乐和灵感，但为了我们家的孩子‘来往’，我不得不去喂奶。”随着“奶爸”马云的号召，阿里巴巴的全体员工陷入了一场疯狂的拉人大战：他们通过微博、微信和任何能找到的渠道，将众多“厂外”(阿里内部对于非阿里员工的称呼)拉进了“来往”的好友名单，而这款即时通讯产品9月25日才刚刚推出。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　在阿里巴巴集团紧锣密鼓准备上市的当口，马云却愿意花如此大的精力去推广毫无胜算的“来往”，这似乎说明：阿里在移动互联网上存在明显的短板。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　创业14年来，用马云的话来说，阿里已经建成了一个生态系统，渗透到了每个中国人的生活之中：阿里旗下的一淘网成为消费者寻找商品和比价的入口，淘宝则聚拢了数以百万计的中小商家和数以亿计的商品，并为大商家齐集的天猫带去了足够的流量和人气，支付宝负责交易结算和信用担保；就连一向较弱的物流，也正在通过新组建的菜鸟网络补上短板。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　在PC互联网时代，阿里能够把京东、苏宁等对手们甩在身后，关键就在于阿里构建了如此完美的生态系统。如今，它发现很难在移动互联网上复制同样完美的生态系统。在那小小的手机屏幕上，消费者更愿意利用碎片时间，而没有那么多的块状时间和精力去逛淘宝或天猫，他们更喜欢与自己的好友们在蘑菇街、美丽说、口袋购物等移动购物平台上分享心得。更大的威胁则来自于腾讯。随着微信开放平台对商家的全面开放和微支付的全面引入，高达2亿的活跃用户将会尝试进入腾讯精心构筑的移动购物乐园。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　“今天，天气变了，企鹅走出南极洲了，它们在试图适应酷热天气，让世界变成它们适应的气候，与其等待被害，不如杀去南极洲。去人家家里打架，该砸就砸，该摔的狠狠摔……嘿嘿，兄弟们好好玩吧！微信IM本来就不是我们的！把企鹅赶回南极去，动起来！”在阿里巴巴的内网上，马云这番激烈的发言，其实已经道出了阿里为什么要大力推广“来往”的原因。当微信的移动购物即将形成闭环之时，阿里怎能坐视不理。通过“来往”这支空降部队，阿里正在对腾讯的核心阵地(手机QQ和微信)进行大规模的侵扰，从而延缓腾讯进军电子商务的步伐，这其实是以攻代守的一步好棋。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　马云登高一呼，应者如云。仅仅是10月21日一天之内，“来往”就新增了524万用户。不过，千万不要被马云的狠话迷住了眼睛，他真正在乎的，其实还是阿里在电子商务领域的王者之位。去年双11的时候，他与史玉柱、沈国军等三十多位企业家好友在茶馆小聚，谈笑间，淘宝/天猫在一天内完成了191亿元的惊人销售额。今年，“来往”能否真正挑战微信其实无所谓，而如果双11的数字很难看他恐怕就要跳起来了。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　而今年的双11，也是对阿里移动互联网策略的第一次重大考验。天猫已经准备了2亿元现金红包，鼓励抢到红包的消费者通过新浪微博手机客户端、“来往”等与好友分享，这样自己的红包也有机会翻倍。阿里集团技术部副总裁刘振飞透露，为了鼓励消费者通过手机购物，天猫、淘宝等手机无线客户端的承载能力增加到了去年的25倍。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　还有一个最大的变化，就是双11的战火将全面延伸到线下。除了天猫上的2万多家线上厂商参加双11大促之外，天猫还联合了银泰百货、优衣库、GAP、I.T等300多家品牌的3万多家线下门店共同参与这次活动。从10月1日黄金周开始，消费者就可以在线下的3万家门店中发现天猫的标识和易拉宝的二维码，就可以进行拍照进而分享，为双11预热。第二波从10月14日正式开始，消费者再次来到线下门店的时候，就可以参加抽奖，扫二维码还能拿到双11使用的优惠券。而从11月9日开始的周末，消费者逛商店的时候已经能够找到很多线上线下同款同价的商品，扫二维码并将其收藏到天猫“购物车”当中，就能享受低到五折的商品。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　就连汽车这样的大件商品也加入了双11的促销。消费者可以在15个汽车品牌的天猫线上旗舰店挑选自己中意的那款汽车，预付定金后再到线下4S店试驾，满意之后再用POS机交尾款，从而得到商家和天猫整体送出来的积分。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　线下商家也非常期待这次与天猫合作的新玩法。“我们要用互联网思维，将自己改成全渠道或成为其它全渠道的一部分。”银泰集团CEO兼银泰商业集团CEO陈晓东表示，银泰百货将在旗下所有的门店建设超宽带高速Wi-Fi，对任何一位进入门店的消费者进行身份识别和互动，从而为他们提供更精准的服务。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　为了全面拥抱移动互联网，阿里旗下的各大事业部也正在对自己的产品进行全面改造。今年4月，一个被称为“微淘”的功能置入了淘宝手机客户端的一级菜单之中。与PC版淘宝的“逛”有很大的不同，“微淘”让用户通过自主订阅的方式来获取各种商品信息和服务，也更适合移动情境下用户的购物习惯。支付宝也在10月16日推出了7.6版支付宝钱包，增加了很多移动支付功能。不久之后，消费者拿着安装了支付宝钱包的手机，通过“声波离线支付技术”，即使没有网络的情况下也能够轻松购买自动售货机中的商品。此外，新版支付宝钱包还加强了“扫码”功能，消费者只需要通过手机摄像头拍下银行卡，就能够完成快捷支付。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　所有的这些努力，都将在11月11日当天经历一场大考。当今年的双11过去之后，业界也许将不再关心销售额又创了多少新高，而会去深究另外一些数字：移动客户端完成了多少的销售额，线下门店带来了多少销售额，通过支付宝钱包又完成了多少销售额。去年，这些数字还都很小，几乎可以忽略不计；而今年，它们将为阿里巴巴集团的上市筹备工作添上重要一笔。对美国资本市场非常熟悉的马云不会不知道，Facebook之所以在上市之后长达一年的时间里持续低迷，很大程度上也是由于当初在移动战略上的失误，以至于在Facebook的《招股说明书》中关于未来运营风险的提示中还特别强调，“尚未从移动产品中获得有意义的收入”。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　如今，阿里的2万多名员工已经“动”了起来，他们希望通过自己的努力，不仅能够收到今年的红包，还能够继续收获移动互联时代的大“红包”。&lt;br /&gt;\r\n&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('55','29','&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/yidonghl/201311/1.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	随着UC应用中心、微信公众平台、支付宝公众服务平台、百度轻应用平台等轻量级应用平台的出现，我们看到了更多的应用开发和运营可能性。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n不久前召开的2013百度世界大会上，百度推出了“轻应用”这一概念，正式成为继微信公众平台、UC应用中心之后又一超级Web App平台。随着Web App开发者的不断增加，人们对于所谓Web App和Native App的“存废之争”有了更加理性的认识。开发者们看到了更多的可能性：移动互联网时代的产品可以有多种多样的表现形式，触及到用户的渠道有很多，盈利模式也可以变得更加多元化。10月26日，极客公园举办了第48期线下活动“更轻的应用·更重的商业”，从平台和开发者的双重角度解读“轻应用”的前景。&lt;br /&gt;\r\n&lt;br /&gt;\r\nUC优视国内浏览器产品部总经理朱挺：超级App与轻应用如何互利共生？&lt;br /&gt;\r\n&lt;br /&gt;\r\n朱挺认为，原生应用正遭遇着头部应用和尾部应用的巨大分野，0.1%的应用占据了70%的下载量。尤其是像QQ、微信、UC、微博和360这样的超级App属于大部分用户的“装机必备”，拥有庞大的用户量和极高的使用频率。那么这些超级App应当思考这样两个问题：&lt;br /&gt;\r\n&lt;br /&gt;\r\n1. 如何向用户提供个性化服务和内容？&lt;br /&gt;\r\n&lt;br /&gt;\r\n2. 如何将流量供给合作伙伴？&lt;br /&gt;\r\n&lt;br /&gt;\r\n轻应用的机遇由此而来，它往往建立在超级App搭建的平台之上，围绕手机特性进行开发，能够更方便地曝光在用户面前和被调用。典型的就是UC+轻应用和微信公众账号。超级App打造的生态可以比作“Shopping Mall”模式：超级App就像一座购物中心，而里面的轻应用则是各家超市、商店、餐厅和影院。&lt;br /&gt;\r\n&lt;br /&gt;\r\n朱挺对轻应用开发者提出的建议是：内容为王。用户关注的并不是哪个应用来给他提供内容，用户需要的是好的内容。只要有好的内容和服务，无论开发者处于哪个平台，都会受到用户的支持。&lt;br /&gt;\r\n&lt;br /&gt;\r\n阿里巴巴小微金融服务集团国内事业群无线事业部总监李杨东：轻支付，重服务&lt;br /&gt;\r\n&lt;br /&gt;\r\n在李杨东看来，装机量和支付量是应用所追求的两个核心维度。但是目前原生应用的开发成本居高不下，比如CPA 推广、应用市场、渠道预装、实名认证等都需要较大开支，同时用户的留存度也不够理想。&lt;br /&gt;\r\n&lt;br /&gt;\r\n今年下半年，支付宝将在支付领域积累多年的数据和资源进行开放，在移动端为开发者提供了3种接入模式：一、native app——引导下载，免去流量推广，会员黏性高；二、公众号——无需安装，用户主动关注，可进行用户管理和定点营销；三、深度集成——IT系统互通，会员卡等数据集成。&lt;br /&gt;\r\n&lt;br /&gt;\r\n相比于其他超级App，支付宝所具备的优势是低成本接入阿里的生态圈；面向教育、游戏等行业进行特殊金融工具支持；近场卡券核销和支付功能。&lt;br /&gt;\r\n&lt;br /&gt;\r\n奇虎360无线部门产品总监姜燕北：如何解决小应用分发难题？&lt;br /&gt;\r\n&lt;br /&gt;\r\n姜燕北的观点在各家平台中似乎更加特立独行：轻应用只不过是浏览器之外的一个新的移动网站的载体而已；如果产品服务不适合以移动网页的形式提供，那么开发者就不要去考虑轻应用了。在360看来，服务提供商（开发者）要做的原本有两件事：开发移动网站和开发移动App。但这两件事可以变成一件事，那就是仅仅开发移动网站，然后同时在浏览器和其他轻应用平台上进行分发。这样服务提供商就能够专注于产品的服务，而不是开发上面。&lt;br /&gt;\r\n&lt;br /&gt;\r\n根据360手机浏览器和手机助手上的轻应用统计数据，总的日活跃率在6%～7% 左右，和Native App的总日活跃率较接近；同时单次进入轻应用商店的添加应用数量，略高于Native App 的添加比率。从中可以看出，轻应用的确更容易分发，但最终能否留下来还是得看提供的服务。姜燕北认为，小应用的分发难题其实并没有明确的解决办法，360希望开发者把精力放在产品的服务上面，而不是在Web和Native之间做双份工作。&lt;br /&gt;\r\n&lt;br /&gt;\r\nTouchChina创始人/CEO沈卓立：如何选择合适的轻应用平台？&lt;br /&gt;\r\n&lt;br /&gt;\r\n景点通是TouchChina 旗下的核心产品之一。在长期的应用开发过程中，沈卓立发现，流畅的用户体验、离线使用、硬件接入无疑是原生应用所固有的优势，然而分发渠道、用户安装、内容更新和部署的成本日渐高昂，多平台支持也是原生应用一直要面临的门槛。&lt;br /&gt;\r\n&lt;br /&gt;\r\n轻应用从广义上来说其实就是无需下载安装即可使用的应用，目前以Web App 为主要表现形式。轻应用与搜索紧密结合，能够将其发布到精准用户群；可以与上下游产业紧密联系，业务相互嵌套，形成良好的用户体验；适合以信息呈现为主、交互不多的应用；应用的开发和发布成本低，支持内容的快度迭代更新。但是要获得大多数用户的认可还需时日。&lt;br /&gt;\r\n&lt;br /&gt;\r\n不过需要正视的是，Web App 必须需要连网才能使用，其交互体验与Native App 尚有差距。Web App 对硬件的支持和接入目前相当不足，此外与Native App 的机型适配类似，Web App 同样需要解决在不同浏览器或超级App 平台的适配问题。&lt;br /&gt;\r\n&lt;br /&gt;\r\n一块去旅行网CEO陈作智：轻应用≠轻技术&lt;br /&gt;\r\n&lt;br /&gt;\r\n陈作智将一块去旅行网定义为“面向移动端的OTA”。他坦言尽可能多地导入流量是他进行轻应用开发的首要目的。目前一块去旅行网在百度、UC、微信和高德地图中均有相关产品，提供的服务包括门票打折、景点地图、AR实景、导游导览等。&lt;br /&gt;\r\n&lt;br /&gt;\r\n陈作智认为，应用可以“轻”，但其吸引用户依靠的是背后更“重”的数据。&lt;br /&gt;\r\n&lt;br /&gt;\r\n对于浏览器、超级App等轻应用平台，陈作智希望它们鼓励创新，让具有创新能力的小团队获得更多展示机会；此外还需构建良好的轻应用生态环境，让用户拥有更高的选择权重，而不是完全依照竞价来排名。&lt;br /&gt;\r\n&lt;br /&gt;\r\n圆桌讨论&lt;br /&gt;\r\n&lt;br /&gt;\r\n更轻的应用，更重的商业&lt;br /&gt;\r\n&lt;br /&gt;\r\n超级App与轻应用相互之间可以形成多方的合作关系，其终极目的是让用户体验到顺畅的使用闭环。轻应用的一个天然优势就是不断产生新的内容，而超级App要做的就是让这些内容自由地流动并呈现给用户。超级App必须要注意的一点是，不能够因为自己所具备的影响力而试图去打扰用户，改变用户的习惯，而是应当顺着用户的行为去提供用户下一步有可能采取的行动。提供内容的轻应用无论基于何种平台，它要做的就是在用户需要的时候适时出现，这才是轻应用提供服务、到达用户的恰当渠道。&lt;br /&gt;\r\n&lt;br /&gt;\r\n传统的Native App之间其实缺乏信息、数据和流量的互通，而轻应用在未来更大的价值可能在于，让不同的内容之间形成良好的关联效应，降低了应用间的跳转和通信门槛。尤其是对于那些正在进行互联网化、信息化转型的传统行业而言，轻应用可以让企业在平台的闭环之外打造属于自己的渠道。而轻应用所赖以存在的整个移动互联网更能够帮助传统行业积累用户数据，以更多元的渠道发现自己的用户。&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('56','29','&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/yidonghl/201311/2.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	马化腾设想，微信的公众平台可以成为用户与实体世界的一个连接点，“希望搭建一个连接用户与商家的平台，腾讯只提供规则，由用户和商家去自由创意。”\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n在外界看来，“15岁”的腾讯早已借微信拿到中国移动互联网第一张“船票”，但这家已经市值千亿的企业依然有危机感。&lt;br /&gt;\r\n&lt;br /&gt;\r\n“现在说拿到了什么船票门票，但能不能走到终点还不一定。”在昨日的WE大会上， 腾讯CEO马化腾在主题演讲中说。&lt;br /&gt;\r\n&lt;br /&gt;\r\n“稍微不注意，跟不上就会倒下。”马化腾说，腾讯已经在内部改革，让自己有基础适应未来的潮流，并提出了“连接一切”、“互联网+”、“开放协作”等七个关于未来互联网的思考方向。&lt;br /&gt;\r\n&lt;br /&gt;\r\n马化腾说，腾讯希望在未来把用户与实体世界连接起来，希望用户可以用指尖触及生活的方方面面。&lt;br /&gt;\r\n&lt;br /&gt;\r\n通往未来的“七个路标”&lt;br /&gt;\r\n&lt;br /&gt;\r\n“移动”，预计将是一个10倍于传统PC互联网的市场，无论互联网企业，还是传统企业，如何应对移动互联网浪潮？演讲中的马化腾谈及自己的思考，称移动互联网每个企业都需要摸着石头过河，但中间也有规律可循，他称作“七个路标”。&lt;br /&gt;\r\n&lt;br /&gt;\r\n“第一个路标是连接一切。”马化腾说，移动互联网让与网络的连接成为“默认”设置，所有的工业品和消费品都会联网。“中国工业界，这会是未来几年的重要趋势，将大大提高中国的生产效率。消费品也会装上传感器，提升我们的生活质量。”&lt;br /&gt;\r\n&lt;br /&gt;\r\n第二是“互联网+”创新涌现。互联网与传统各行各业的连接，会让许多复杂的难题找到新方法。未来几年，互联网在医疗健康、交通等领域都将带来很多创新。同时，跨界创新也让传统的产业疆界变得模糊，行业版图需要重新想象，竞争加剧。&lt;br /&gt;\r\n&lt;br /&gt;\r\n第三是开放的协作。小公司有了挑战大公司的能力，而且任何一家公司单凭一己之力，已远远无法满足用户的需求。因此，企业必须要有开放的心态，大的企业要善于建好自己的平台，有所为有所不为，把开放做好。“对于发展不太好的项目，需要有壮士断腕的精神，敢于把它交给更合适的团队去做。”&lt;br /&gt;\r\n&lt;br /&gt;\r\n此外，还包括让消费者参与决策、让数据成为资源，顺应潮流的勇气，以及应对连接一切的风险等。&lt;br /&gt;\r\n&lt;br /&gt;\r\n“任何技术都有两面性，社交网络看似很火，但大家见面吃饭都在玩手机。”马化腾说，技术的连接提高了效率，但同时也会让企业更加脆弱。“互联网会让虚拟空间的攻击更加容易发生，甚至很可能对互联网企业构成致命打击。连接的增加也带来了人们对侵犯隐私的担忧，如何让企业规范地利用用户资料方面，不加以滥用，是一个重要课题。”&lt;br /&gt;\r\n&lt;br /&gt;\r\n“又回到15年前激情燃烧的岁月”&lt;br /&gt;\r\n&lt;br /&gt;\r\n“在移动互联网面前，每一个企业家都应有‘归零’心态。”马化腾在昨日演讲中说。而今年15岁的腾讯也正站在再出发的起点上。&lt;br /&gt;\r\n&lt;br /&gt;\r\n目前，腾讯的各项产品中，移动已经占了很大比重，有的甚至已超过PC。在腾讯总裁刘炽平不久前的内部讲话中，他提及腾讯的通讯社交业务，在PC 侧下降，移动侧的增长非常明显；在媒体业务上，腾讯网整体的阅读文章量和整个用户量在PC侧有所下降，但移动侧UV超过了PC侧的UV；而微博业务已有75%都在移动端。&lt;br /&gt;\r\n&lt;br /&gt;\r\n用户向移动互联网转变的趋势也曾让腾讯经历阵痛。去年5月，腾讯变革组织架构，从原有的八大业务系统线变为六大事业群制以及一家独立的电商子公司。其中，为了顺应移动互联网时代，腾讯把原来分散在不同部门的同一产品PC端和移动端团队，整合在了一起。&lt;br /&gt;\r\n&lt;br /&gt;\r\n一系列调整透露出腾讯将业务全面向移动互联网整合的决心。而重新调整后的腾讯也将在移动互联网大潮下“两条腿走路”，一是在PC端稳固平台级产品的核心地位，并打通各个产品的用户信息流关联，构成防火墙，此为守；二是在内部组织架构的优化下，激发组织中层的自主性，推动移动互联网产品的创新和竞争力，此为攻。&lt;br /&gt;\r\n&lt;br /&gt;\r\n此外，目前腾讯的业务主要仍在虚拟领域。马化腾设想，微信的公众平台可以成为用户与实体世界的一个连接点，“希望搭建一个连接用户与商家的平台，腾讯只提供规则，由用户和商家去自由创意。”&lt;br /&gt;\r\n&lt;br /&gt;\r\n“面对（移动互联网）这个潮流，我们好像又回到了15年前激情燃烧的岁月，我发现我们做了15 年，从零开始打造的工具、平台，从一个没有商业模式的产品，逐渐成长为丰富的商业模式。从头推翻，重新来一次，这个过程也是很让人激动的。”马化腾在腾讯内部如是说。&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('57','29','&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/yidonghl/201311/3.jpg&quot; alt=&quot;&quot; /&gt;　\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	腾讯构建的社交帝国一度笼罩着国内的所有互联网公司，无论是百度、阿里巴巴这些大巨头，还是一些中小企业，在社交领域都败给了“企鹅”。现在移动互联网的到来，“企鹅”的阴影始终挥之不去，腾讯旗下的微信裹挟6亿的装机量（注：11月8日腾讯和当当宣布达成战略合作的时候，当当网表示微信有超过6亿的装机量，移动端具有明显优势，能为当当网提供优质的消费类用户），依然横扫整个移动社交市场。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n　　马化腾日前在中国企业家俱乐部理事会上表示：微信真正把手机变成了人们的电子器官，是纯粹为移动互联网而设计的而不是从PCweb平移过来的。微信如果不是腾讯的，腾讯将是灭顶之灾，想起来惊出一身冷汗。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　确实不少人会认为，移动互联网是一个全新的世界，PC端的产品转移到移动端，就应该“丢掉”PC端，从新对移动端进行规划设计。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　我认为：PC端转移到移动端，你可以把你的产品设计成符合移动端用户的行为习惯，你可以把你的移动端做的不一样。但是PC端聚焦着的是你的用户，它保留着你手里几千万甚至几个亿用户的使用习惯、搜索习惯、浏览习惯，你能够“丢掉”整个PC世界，怎么能丢掉整个PC世界的用户呢？移动互联网产品，应该结合PC端用户的使用习惯、消费习惯，将PC端好的东西吸收过去进行转化，将PC端的用户“复制”到移动端来。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　微信，你掉级了！&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　就拿腾讯来说，QQ是一个免费的社交工具，在PC端它依靠的是它的增值服务来盈利。其中有一个很重要的就是它的等级制度，一级是星星图标，满了四级才会是月亮图标，满了16级才会是太阳图标，终极状态是皇冠图标（皇冠的图标传说是马化腾才有，我找了好久也没找到）。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　80后应该还能记得，在QQ盛行的时期，不少互联网初级的用户就把电脑开着，挂QQ升级，就这样日复一日，从星星图标到月亮图标再到太阳图标。在当时的时期，国内的个人电脑并不盛行，所以不少当时的“屌丝”用户都是在网吧挂QQ升级的，这样用户升级就非常困难了（从星星升级到太阳大概要320天），这种带有捆绑性质的行为让不少用户都心甘情愿“上了套”。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　社交的等级制度还体现在腾讯的另一款游戏产品上——QQ农场，没有人知道QQ农场的顶级是多少，但是这丝毫不影响用户日日夜夜的为了农场去偷菜升级，它的等级制度吸引着用户不停的紧跟产品的新设计，这就是等级的魅力。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　微信作为腾讯在移动端的主打产品，它的推出在短期内就获得了大量用户，有人称这是腾讯的社交基因，马化腾自己也称“微信如果不是腾讯的，腾讯将是灭顶之灾，想起来惊出一身冷汗”。实际上微信现在也面临着包括易信、来往甚至是陌陌、啪啪这些产品的冲击，所以在腾讯推出微视的时候我就说到，微视的推出是微信为了和其他移动社交产品能够差异化竞争移动社交市场的重要工具（详见原文《腾讯微视：差异化+野心+商业化》）。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　竞争激烈的移动社交战场，纯产品的争斗已经升级到了基础的流量服务，甚至是强制性的内部员工使用。微信虽然有几亿用户，但是目前的地位并不是特别稳固，其他的几款社交产品完全有可能抢掉它的市场份额。我不知道为什么微信会“丢掉”了使用十多年的PC端用户的使用习惯，因为等级制度一直都体现在腾讯PC端的各个产品中，包括QQ、QQ游戏、QQ空间以及它的邮箱等产品，等级制度无处不在，有些是“花哨”的，而有些却能吸引用户不停的跟着产品的步子走。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　移动社交工具等级的优势在哪里？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　（1）用户的差异化。单从产品来说，微信和易信、来往的功能区别真不大，如果几款产品的用户量相当，用户并不会介意使用哪款社交产品。等级制度的优势是体现用户的差异化，用户会自己去寻找用户与用户之间的差异，A用户比B用户的等级高，B用户又比C用户的等级高，反正A和B就是不一样。用户需要有这种差异感，也需要有这种炫耀感，虽然大家都在用微信，但是皇冠就是比太阳要漂亮。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　（2）产品的持续发热性。用户使用微信的动力是什么？除了必要的联络，它又如何来吸引用户有一种自发的动力去使用它呢？等级制度可以让用户“为了升级而升级”，这个时候产品其实是附带有延伸性的，它能让用户不停的去使用它。使用微信会让用户感到“发热”么？完全不会，它没有漂亮的星星和月亮、太阳、皇冠。&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　（3）增值服务。QQ最初的时候，只有满了16级才能建立QQ群，QQ网盘买了会员才有64M的空间，普通用户只有16M，QQ农场4级的种子和8级的种子是完全不一样的。微信如果能增加它的等级制度，它很多的增值服务完全能够活络起来，比如收费表情、等级图标、游戏、支付、微视等，完全都可以利用等级制度来区分，从而达到增强用户粘性的目的，如果用户能够按照微信的这种滚雪球模式使用个一年半载的，有了这一年半载的用户使用习惯的培养，还有谁能与之争锋呢？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　等级制度只是目前微信可以利用的最实际的PC端的模式之一，还有其他很多PC端用户的使用习惯可以“CTRL+C”。微信可以“丢掉”PC端的思维模式，但是腾讯PC端遗留下来的用户习惯是一笔宝贵的财富，这是其他任何纯移动端产品所没有的优势，不过目前的微信有一点“手忙脚乱”的感觉，微信的开发还没开始呢，等级制度只是一个起点，还有谁能比腾讯更懂社交网络上的用户呢？&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('58','29','&lt;p&gt;\r\n	一张信息图：一分钟读网之移动互联网。图片上揭示移动互联网网民规模、网民接入方式、年龄、地域、广告支出、热门应用等方面的信息，方便消费者在最快的时间内了解目前中国移动互联网的概括。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/yidonghl/201311/4.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('59','29','&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/yidonghl/201311/5.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	这个世界有三种成功比成功本身更让人振奋，发明者重新发明，革命者全面革新，领导者继续领航。毫无疑问，百度收购91无线带来的成功，属于第三种。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n在科技公司的发展过程当中，收购是及其常见的一种自我成长方式，但并不是每一次的收购都可以达到1+1＞2的局面。一般来说，大公司收购小公司，要么是排敌，要么是纳新。在国内三大互联网巨头当中，腾讯有QQ和微信，阿里有淘宝和半个新浪微博，但无奈百度所拥有的无线App却没有一个能够独当一面，在这个时候，百度迫切的需要一个出路，或者说，一个入口。&lt;br /&gt;\r\n&lt;br /&gt;\r\n最初摆在面前的选择眼花缭乱，最后百度选择了91。高达19亿美元的价格带来的提神兴奋至今也没有在行业内散去。但是数额如此巨大的收购，不禁让人感到疑虑，91能够承载百度如此重大的期望吗？&lt;br /&gt;\r\n&lt;br /&gt;\r\n如果接连上涨的股价不能够说明什么的话，那么仅仅时隔两月91桌面用户破亿在即的消息，足够给所有人一个印象——距离百度将PC互联网的入口地位搬到移动互联网，已经不远了。&lt;br /&gt;\r\n&lt;br /&gt;\r\n渠道的胜利&lt;br /&gt;\r\n&lt;br /&gt;\r\n要解读91入赘百度之后所获得的成功。还需要从百度自身的移动战略说起。&lt;br /&gt;\r\n&lt;br /&gt;\r\n作为与PC端同等重要的重中之重的业务，百度移动业务的构建可以概括为三个方面：移动搜索、应用分发、生态系统（实际上，这也是大部分大型互联网公司在移动端的战略布局）。在移动搜索领域，百度拥有着先天的优势，而事实上，这也是百度移动业务发展的第一梯队。数据显示，百度已经占据60%以上的国内移动搜索流量，并且正在图片和语音搜索领域也接连取得进展。也就是说，在移动搜索领域，百度已然独占鳌头。&lt;br /&gt;\r\n&lt;br /&gt;\r\n而经历了一系列App的催化，特别是地图业务一直保持在主力地位，百度的生态圈已经初步成型，中心基本就是地图LBS，这一点，从百度不断发力导航和身边业务就可以窥见一斑。&lt;br /&gt;\r\n&lt;br /&gt;\r\n但到了应用分发领域，百度所有的优势都面临着推翻和洗牌。事实上，无论是PC引流类型（腾讯、360）、硬件厂商预装类型（安卓市场、安智），还是社区类型（91助手、机锋、），都已经抢在百度之前将应用分发市场挤得满满当当。摆在百度面前唯一的出路，就是用金钱换取时间，收购一家现成的厂商。而这个目标，除了具备市占率和品牌价值以外，还必须得是一个既能提供入口，又能卡守关口的产品。&lt;br /&gt;\r\n&lt;br /&gt;\r\n在经历了长久的摸索之后，百度出手收购了91，补上了自家移动互联战略木桶的最短板。更重要的是，91本身已经是一个完整的生态圈，百度接手之后不需要再费力气重头经营，而只需专注导入用户和流量就可以成倍放大91的价值。如此，91和百度就可以携手坐上移动互联网入口的头把交椅。&lt;br /&gt;\r\n&lt;br /&gt;\r\n你可能从满大街还都是MTK的时代就知道了91手机助手，而91发展壮大的这些年，伴随的是智能手机行业快速的发展更迭。行业需要什么，用户需要什么，91比任何企业都清楚。在智能手机普及初期，91提供给了徘徊在论坛中求助和咨询的用户一个简单直接的解决方式，这种一站式的体验不仅帮助91迅速积累了初期用户，也在很大程度上使得后来者不得不在模式重叠的基础上另辟蹊径来回避91的锋芒。&lt;br /&gt;\r\n&lt;br /&gt;\r\n与桌面系统不同，移动互联网有着独立的应用分发渠道，这使得流量的来源集中而庞大。91助手最大的特点是实现了PC与移动设备的无缝整合，类似于Apple Store一样控制住所有应用安装的闸口。如果百度能够抢占这部分山头，就等于掌握了整个的应用分发市场的脉门。同时，91还可以帮助百度完善属于自己的“用户—开发者—平台”生态圈，有力建成属于自己的移动业务航母。与其他移动平台相比，91带给百度的竞争优势是无可比拟的。&lt;br /&gt;\r\n&lt;br /&gt;\r\n平台的价值&lt;br /&gt;\r\n&lt;br /&gt;\r\n从目前已具备规模的平台化产品上我们可以看出，当用户通过其中一个入口连接移动互联网世界之后，就基本不会再使用其它入口。&lt;br /&gt;\r\n&lt;br /&gt;\r\n尽管每一家厂商都在不断努力适应着市场，但用户的要求却出乎意料简单，那就是轻简。搜索网络之所以成为桌面互联网的优先入口，就是因为其可以直接将用户传递到他们想去的地方，而诸如桌面导航网站蓬勃的原因也大抵如此。在移动互联网领域当中，用户仍旧希冀的是一个简单高效的选择。&lt;br /&gt;\r\n&lt;br /&gt;\r\n相比较于IM、浏览器和导航软件，手机桌面是入口最浅的，发展潜力和市场前景也是最大的。&lt;br /&gt;\r\n&lt;br /&gt;\r\n可以预见的是，在桌面应用把用户体验和应用机制反馈在头层之后，随之而来的就是用户对原生系统的依赖性减低；再往后，桌面就成为了厂商构建移动互联整体平台的洞天福地。&lt;br /&gt;\r\n&lt;br /&gt;\r\n事实上，在之前的移动互联格局中，并没有给桌面应用留下一个位置。因为在很多人看来，桌面的作用仅仅只是浮在硬件表面而已，根本不能与浏览器、IM、地图导航等软件形成对等竞争。但是，桌面美化应用提供的高自由定制功能，无形中却帮助增长了消费者对产品的控制力和差异化，在硬件普及基本随大流的现下，桌面应用是隔着硬件和ROM中间折中又轻巧的选择。&lt;br /&gt;\r\n&lt;br /&gt;\r\n我们知道，由于少数硬件品牌统占绝大多数市场，直接导致了硬件产品同质情况严重，不能够体现用户的个性和思想。而对于消费者而言，无论产品标榜的多么智能，都不如一台独一无二、高度定制的产品更吸引人一点。为了迎合消费者的需求，厂商推出多彩机身或是定制外壳，但受限于产品定位和成本问题，一直不能够形成规模；同样为个性化努力的还有配件厂商，虽然提供了不同的外壳或美化方式，但无力的是，发力在表面和外设上的努力丝毫不能给软件体验加分，最终的结果是治标不治本。&lt;br /&gt;\r\n&lt;br /&gt;\r\n而一个优秀的桌面应用，不仅可以提供壁纸、主题、图标、字体的选择和替换，还可以个性化锁屏和插件定制，实现成千上万种搭配效果。也就是说，91桌面所提供的不是让一切复杂的源头，而是一种完全自主的简约。最终，将为每个用户带来独一无二的感官和使用体验。&lt;br /&gt;\r\n&lt;br /&gt;\r\n未来的趋势&lt;br /&gt;\r\n&lt;br /&gt;\r\nFacebook Home试图把社交桌面打造成为用户智能体验的中心，虽然结局失败，但这并不妨碍桌面应用前景的美好。类似Facebook Home这样用社交应用去捆绑消费者难免势单力薄，但若是91桌面这样一个可以帮助用户在手机上实现个性化打造和应用管理的全能应用，其前景就不能一概而论了。&lt;br /&gt;\r\n&lt;br /&gt;\r\n试想一下，你掏出手机点亮屏幕的那一刻起，所有的习惯和指令都将按照你的心意触发，无论是拨打电话、回复邮件、刷新微博、还是播放音乐，你从桌面上都可以直观并极尽可能在最短时间和步骤中达成要求。&lt;br /&gt;\r\n&lt;br /&gt;\r\n况且桌面的未来却不仅限于此。实际上，作为内容分发渠道的一部分，桌面应用不仅可以通过桌面导航实现流量分发变现，还可以整合集成系统功能（如杀毒、隐私、清理后台、流量统计等），极大程度上精简用户对软件的需求，从而减轻硬件的负荷，进一步提升用户体验。&lt;br /&gt;\r\n&lt;br /&gt;\r\n也就是说，和永远处于手机最优先级的通讯功能一样，桌面就是凌驾于冰冷系统之上提供给用户最直观体验的展现。&lt;br /&gt;\r\n&lt;br /&gt;\r\n目前，国内手机桌面市场竞争非常激烈，但91桌面是唯一横跨iOS和Android的桌面软件。而得益于联姻百度后资源和流量的扩充，以及可以积累用户前端的应用商店和早期经营培养出来的用户高付费接受度，目前91桌面发展势头最为强劲。（数据显示，目前在使用91桌面的用户大多集中于年轻一代，他们不仅具备活跃的思维和独特的审美，还拥有着极强的变现能力。）&lt;br /&gt;\r\n&lt;br /&gt;\r\n在往后智能手机同质化更加严重、创新区间进一步被挤占的情况下，桌面应用将可预见性的取代ROM，进一步帮助消费者逃离频繁刷机或安装大量软件的学习与经济成本；同时，随着智能设备的普及和操作系统的完善，用户对于App的需要将更加精确，如果一款桌面应用就足以应付绝大多数使用场景，那必然是用户的不二之选。&lt;br /&gt;\r\n&lt;br /&gt;\r\n而就目前看来，作为市场排头兵的91桌面，其所能为用户带来的，已然是消费者对智能生活所畅想的全部。&lt;br /&gt;');
INSERT INTO `fn_content_1_news` VALUES('60','40','&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	现在很多小伙伴都在用移动电源，并且随时准备用移动电源给电量低的手机或者平板充电，可对于移动电源这种看起来蛮简单的东西却有很多不太正确的认识。虽然很多不正确想法不会造成什么危害，但是多少还是有一些损失的。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	移动电源这些错误想法\r\n小伙伴们你有吗？&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　这次我们就看看小伙伴们对移动电源或者充电方面有什么错误想法，并且我们来纠正小伙伴们的错误吧。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;1&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，扁扁，软软的电池就是聚合物&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴们认为：那个扁扁的，看起来薄薄的，就是聚合物锂电池&lt;span&gt;,&lt;/span&gt;不是所有扁形的电池都是聚合物电池&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	其实：这个想法是错的，聚合物确实可以做成薄薄，扁扁的样子，但这个样子的不一定是聚合物电池。现在大家所接触的移动电源，很少是聚合物的。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　为什么：大家看到的哪些非&lt;span&gt;18650&lt;/span&gt;铝壳和铁壳的铝箔电芯，其实并不是真正的聚合物电芯。准确的说应该是软包锂离子电池。其采用的正极材料主要还是&lt;span&gt;LiCoO2&lt;/span&gt;、&lt;span&gt;LiNiO2&lt;/span&gt;和&lt;span&gt;LiMnO2&lt;/span&gt;，和柱状金属壳的&lt;span&gt;18650&lt;/span&gt;电芯用的材质是一样的。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　什么是聚合物电池：真正的聚合物电芯正极采用的则是杂环聚合物如聚砒咯（&lt;span&gt;Ppy&lt;/span&gt;）、聚噻吩（&lt;span&gt;PTh&lt;/span&gt;）及其衍生物。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;2&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，&lt;span&gt;18650&lt;/span&gt;&lt;/b&gt;&lt;b&gt;更容易爆炸，更不安全&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴认为：那个金属壳的圆柱电芯更容易爆炸，看起来就像“二踢脚”，威力肯定更大。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　其实：这种金属壳的锂离子&lt;span&gt;18650&lt;/span&gt;电芯都有泄气阀装置，没等里面的气体达到爆炸临界值的时候，就已经泄气了。当然这个是正品的，如果是伪劣和废弃的，那个就是一个“二踢脚”。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	锂电池爆炸是从内部开始的。为什么：锂电池产生的爆炸式因为里面的水和其他液体物质短时间受热产生高温高压才爆炸的，有了泄气阀，则这种条件不会产生。除非内部短路，能形成爆炸条件。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	不会爆炸但是会着火：锂电池内部电解液蒸发，通过电池泄气阀泄露出去，产生喷射火苗，也非常危险。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span&gt;&lt;img src=&quot;/uploadfiles/image/sunhai/201311/8.jpg&quot; alt=&quot;&quot; /&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;3&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，手机用到没电再用移动电源充电。&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴认为：手机应该在用到关机的时候再充电，这样对电池有好处，也省电。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	其实：正好相反，手机电池用尽了，再用移动电源充电将会导致充电电流上升，产生更多没必要的热量，更加费电。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	其实不必等到手机电量耗光才为手机充电。为什么：当被充电设备的锂电池电量较低时，我们通过移动电源为其进行充电，移动电源会在功耗较大的恒流输出下进行放电。所以，在我们外出时，只要手机等设备处于闲置状态，并且电量不是满电的情况下，最好使用移动电源来为手机进行小电流充电状态，这样才能够减少移动电源在较大电流输出状态下造成更多电量的浪费。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	选择正规的移动电源品牌充电很重要&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　怎样给手机充电：手机电量不能耗光再充电；不能过充；不能在过高和过低的环境下充电；一定要选择正规充电器和正品移动电源充电，并看好电源的输出参数和手机是否相匹配。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;4&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，移动电源受热就会爆炸&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴认为：这个移动电源太热了要爆炸了，赶紧跑呀？&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	其实：移动电源受热并不足以使得移动电源爆炸，一般移动电源的使用温度可以达到&lt;span&gt;60&lt;/span&gt;度，这种温度并不能让移动电源爆炸。放电时移动电源的正面温度低于&lt;span&gt;60&lt;/span&gt;度都比较正常&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	为什么：过高的温度，例如：灼烧锂电池，可以让锂电池内部电解液蒸发，通过电池泄气阀泄露出去，产生喷射火苗，虽然也非常危险但是，不会爆炸。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	密闭的内部短路可导致爆炸&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	怎样会爆炸：密闭的内部短路，可短时间让电池产生高温并让内部的液体以及少量的水分等产生变成气体，形成高温高压，导致爆炸。这种情况最多发生在劣质电池上，因此使用正品锂电池是保证不发生危险的最有效方法。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;5&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，转换率的高低和电压有关系&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴认为：移动电源从&lt;span&gt;3.7V&lt;/span&gt;升到&lt;span&gt;5V&lt;/span&gt;，其转换率不会高于&lt;span&gt;3.7/5=74%&lt;/span&gt;，所以宣传&lt;span&gt;80%&lt;/span&gt;，&lt;span&gt;90%&lt;/span&gt;的转换率是假的。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	移动电源转换率&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　其实：转换率算得是能量的转换率，因为手机的电池也是&lt;span&gt;3.7V&lt;/span&gt;的，因此算能量转化率更合适一些。而这个转换率公式为：（实际放电容量×平均放电电压）&lt;span&gt;/&lt;/span&gt;（标称电芯容量×电芯电压）&lt;span&gt;= &lt;/span&gt;转换效率。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　为什么：为什么用能量而不是电量，因为很多移动电源的输出电压过低，而导致放出的电量较多，因此在算实际放电电量的时候更占便宜，而用能量转化率更加能说明问题。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent:21.0pt;&quot;&gt;\r\n	其他没有转化的能量跑哪里去了：由于锂电池的特性所致，其标称电压通常为&lt;span&gt;3.7V&lt;/span&gt;左右，而我们手机等设备的充电输入电压是需要&lt;span&gt;5V&lt;/span&gt;的，所以对于移动电源来说，无论是使用升压（电芯并联，&lt;span&gt;3.7V&lt;/span&gt;）还是降压（电芯串联或混联，电压高于&lt;span&gt;5V&lt;/span&gt;）的模式，都存在一个能量的转换过程。由于能量在转换的过程中必须要经过电路板上的升、降压以及稳压电路才能够实现，所以移动电源内部的电路板上的电子元器件也会相应的损耗掉一部分电能并且转换成热量，即电能在转换过程中的浪费。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-indent:21.0pt;&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;6&lt;/span&gt;&lt;/b&gt;&lt;b&gt;，大电流输出充电速度快&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	很多小伙伴认为：用&lt;span&gt;2.1A&lt;/span&gt;的输出电流肯定比&lt;span&gt;1A&lt;/span&gt;的快，这就像水龙头大的水龙头出水就快。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;5V/2.1A&lt;/span&gt;输出接口&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　其实：在充电过程中，充电电流的大小是取决于被充电设备的，所以就算我们使用标称充电为&lt;span&gt;5V/1A&lt;/span&gt;的手机连接到移动电源的&lt;span&gt;5V/2.1A&lt;/span&gt;输出接口上，其充电速度也不会比&lt;span&gt;5V/1A&lt;/span&gt;的输出接口更快。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;5V/1A&lt;/span&gt;输出接口&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　为什么：手机的保护措施，会根据安全考虑限制电流输入的大小，这也是避免手机充电过热的方法。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	最好用原装充电器和正品移动电源充电&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　我们怎么选择充电电流：正规的电子设备都会标明标准输入电压和电流，最好用原装充电器和正品移动电源充电。在充电的时候一定要做到电流电压匹配才充电。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　&lt;b&gt;总结：&lt;/b&gt;&lt;b&gt;&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　虽然移动电源，以及手机现在都是在平常不过的东西了，很多时候对这些产品的使用已经变的漫不经心，可魔鬼就在细节之处。就在我们不经意间，往往会造成一些危害。移动电源虽然不容易爆炸，可是冒烟起火的事情并不少见；过热充电虽然出事的人也不多，但如果遇到劣质充电器和劣质电源的组合，难免不出现问题。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	　　还有就是，现在每个人包里其所携带智能数码产品都不在少数，尤其是出差的时候，平板，笔记本，手机，移动电源以及相机等，在乘坐飞机的时候一定要注意所携带的锂电池数量是否超过规定。托运的行李里是否有锂电池产品，请及时取出。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('61','60','&lt;p&gt;\r\n	《孙海渠道》，自2005年创刊以来，一直持续不断的开展户外展示推广活动，既扩大了影响力，也获得了用户的好评。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/64.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	在广州天河IT核心商圈，这张巨大的广告展示牌，恢弘大气，十分具有气势，吸引了众多的读者和用户。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/65.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	为了新刊的发行，我们邀请了乐队助阵，图片中的乐队正在调试中，当乐队开始表演时，现场十分火爆。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/66.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒联合中国电信，共同推出广东省电脑城手机互打免费服务。同时，中渠传媒受台北电脑公会邀请，协助主办2010年广州数博会。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/80.gif&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/68.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒还有很多的推广活动，没有一一展示，但是中渠传媒一定会坚定不移的为客户创造最大的价值。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('62','61','&lt;p&gt;\r\n	中渠传媒销售部季度冠军 &amp;nbsp;胡瀚\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/69.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	张学友演唱会一票难求，胡瀚同事稳坐看台，尽情欣赏着这场视听盛宴，毕竟是歌神的演唱会，还是认真点听。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/70.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	学友哥看过来了~~\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('63','61','&lt;p&gt;\r\n	夏末秋初，中渠传媒全公司组织了一次拓展训练，地址在广州从化一个风景宜人的度假村里。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/71.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	大家参加着活动，欢声笑语，不亦乐乎！晚上，大家在一起吃烧烤，唱歌。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('65','58','&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/79.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	谭总是一位平易近人的智者，和他交流，会学到很多商场经验。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('66','58','&lt;p&gt;\r\n	2010年，依托广东省电脑商会，只身前往香港，和香港电脑商会，澳门电脑商会以及台北电脑公会建立了联系，为召开两岸四地高峰论坛打下了坚实的基础。在以后，我们也多次取得工作联系。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/81.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	澳门电脑商会会长姚健池先生\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/82.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	台北电脑公会事业群 曾春敏小姐\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	和曾春敏后来有过多次联系，我们公司能参与广州信息产业周的展会工作，和台北电脑公会的推荐有很大的关系。全球三大电脑展之一台北电脑展，即为台北电脑公会运作的作品。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/83.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	香港电脑商会创会会长张耀成先生\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	香港电脑商会主办的香港电脑通讯节，已经成为了香港人的时尚购物节日，至今已经举办了9届。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	油菜花在以后的发展道路上，会密切和港澳台电脑商会取得密切联系和合作。为油菜花走向国际打下坚实基础。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('67','58','&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:26px;background-color:#F4F9FC;&quot;&gt;香港建滔集团董事局董事、化工部总裁张广军&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 建滔化工集团是全世界首五名及全中国/香港最大积层板制造商，在中国设立多个综合性垂直生产设施，集团业务集中于发展积层板及有关项目，产品外销到世界各地，包括北美洲、欧洲、东南亚、香港及中国各地。随着业务的不断扩展，集团将加强综合性横向及垂直生产方针，集中发环氧树脂是积层板的主要原材料，是集团发展化工新产品重大举措，为集团向产品多元化方向发展奠定坚实基础。 &amp;nbsp;建滔化工集团，香港上市企业，目前为全球最大的覆铜面板生产商。集团1988年成立，主营覆铜面板、印刷线路板、化工、房地产等四大业务。1993年在香港联合交易所上市，1999年将铜箔业务分拆于新加坡挂牌上市，2004年底成功收购香港依利安达电路板集团公司，2006年底将集团旗下积层板业务分拆在香港联合交易所上市。2000年至2005年连续六年被世界权威财经杂志《福布斯》评选为全球『200家最佳中小型企业』；2004年被纳入摩根士丹利资本国际〈MSCI〉环球指数成份股，2007年获得穆迪及标准普尔评为投资级别； 2008年4月28日获《福布斯》杂志评为全球2000家优秀管理企业之一。集团2010年全年营业额超过300亿港元，税后利润超过20亿港元。至此，建滔集团已成为拥有4家上市公司、员工超过53000人，内地分厂超过60间的大型集团化企业，工厂遍布于全国17个市，市值700多亿人民币。至目前，建滔集团的覆铜面板产量位居世界第一，线路板产量已名列世界第七，成为中国最大的线路板生厂商。&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;&lt;img src=&quot;/uploadfiles/image/201311/84.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;张广军先生，是跟随胡锦涛主席访问美国时20位企业家中唯一一位在美国国会山做演讲的企业家&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;&lt;img src=&quot;/uploadfiles/image/201311/85.jpg&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:14px;line-height:26px;&quot;&gt;张广军先生低调而务实，展望数码广场即为建滔集团旗下物业，张先生还经常半夜过来巡场，可见管理之严谨，监督之认真。实为企业家中的楷模。&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('68','58','&lt;p&gt;\r\n	李易先生，以前的笔名叫大嘴，以炮轰It渠道一些烂事出名。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	李易是一个很有才华的人，以前是电脑商情报的记者，后来自己创办的大参考网站，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	在后来转型到移动互联网领域，\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	现在在上海，运作创业公社。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	74年生，是一个资源整合能力相当强悍的人，文笔也是十分了得。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/sunhai/201311/9.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	李易先生经常参加财经类节目，如cctv,宁夏卫视，上海第一财经等。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/86.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	李易先生观点犀利，见解独到，一针见血。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/sunhai/201311/11.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	李易先生现在还是创业公社创始人兼社长、工信部电信经济专家委员会委员、中科院云计算中心特聘顾问、北航移动云计算特聘教授\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/sunhai/201311/12.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	在李易上海办公室\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp;和李易先生因渠道结缘，且李易比我年长几岁，算是功成名就，自然是我学习的榜样，前进的动力。去上海拜访李易，李易中午开着新买的保时捷，特意找了家湘菜馆，边吃边聊。李易有一个投资公司，叫创富易投，当时有说过收购我们公司的意向。只是我觉得我的事业才刚刚起步，还需要时间来完善。李易知道我的想法，鼓励我好好的坚持走下去，有需要，随时找他。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;在移动互联网领域，都是在以李易先生为榜样，油菜花得以应运而生。\r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('69','60','&lt;p&gt;\r\n	&lt;img src=&quot;/uploadfiles/image/201311/87.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;广州&amp;nbsp;&amp;nbsp; （重点派发区域）：&lt;br /&gt;\r\n&lt;/strong&gt;百脑汇&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 总统数码港&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 太平洋数码广场&lt;br /&gt;\r\n天河电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 颐高数码广场&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 南方电脑城&lt;br /&gt;\r\n新概念电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 展望数码广场&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 周边各大写字楼&amp;nbsp; 番禺 花都 增城 从化&lt;br /&gt;\r\n……&lt;br /&gt;\r\n&lt;strong&gt;中山：&lt;br /&gt;\r\n&lt;/strong&gt;西苑电脑城&amp;nbsp;&amp;nbsp; 小榄电脑城&amp;nbsp;&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;珠海：&lt;br /&gt;\r\n&lt;/strong&gt;海城电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 瀚高电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 湾仔沙电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 香湾电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;佛山：&lt;br /&gt;\r\n&lt;/strong&gt;新鸿运电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 北极熊电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 鸿运电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;汕头：&lt;br /&gt;\r\n&lt;/strong&gt;高新电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 华银数码广场&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 奋发电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp; 捷龙电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 长平电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;江门：&lt;br /&gt;\r\n&lt;/strong&gt;新华电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 五邑电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 湘江电脑城&amp;nbsp;&amp;nbsp; 金田电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;湛江：&lt;br /&gt;\r\n&lt;/strong&gt;国贸电脑城&amp;nbsp;&amp;nbsp; 铁马电脑城&amp;nbsp; 华联电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;东莞：&lt;br /&gt;\r\n&lt;/strong&gt;南城天源数码港&amp;nbsp;&amp;nbsp;&amp;nbsp; 东城世博广场天源电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 赛博电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;石龙电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 樟木头电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 厚街电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 常平电脑城&lt;br /&gt;\r\n长安电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;虎门中科电脑城&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;顺德：&lt;br /&gt;\r\n&lt;/strong&gt;大良德昌电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 顺伟电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;惠州：&lt;br /&gt;\r\n&lt;/strong&gt;黄塘电脑城&amp;nbsp; 平湖电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;韶关：&lt;br /&gt;\r\n&lt;/strong&gt;和平路百脑汇&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 太平洋电脑城&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 风采电脑城&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;br /&gt;\r\n&lt;strong&gt;茂名：&lt;br /&gt;\r\n&lt;/strong&gt;光华电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;肇庆：&lt;br /&gt;\r\n&lt;/strong&gt;天宁电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;阳江：&lt;br /&gt;\r\n&lt;/strong&gt;新江电脑城&amp;nbsp; 中源电脑城&amp;nbsp; 国源电脑城&amp;nbsp; 阳江电脑城&amp;nbsp; 易通数码广场\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;揭阳：&lt;br /&gt;\r\n&lt;/strong&gt;高新电脑城&amp;nbsp;&amp;nbsp; 宝德电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;梅州：&lt;br /&gt;\r\n&lt;/strong&gt;鸿都电脑城&amp;nbsp; 华海电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;海南（海口）：&lt;br /&gt;\r\n&lt;/strong&gt;DC电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;广西（南宁）：&lt;br /&gt;\r\n&lt;/strong&gt;星湖电子科技广场\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&amp;nbsp;\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;strong&gt;湖南（长沙）：&lt;br /&gt;\r\n&lt;/strong&gt;国储电脑城&lt;br /&gt;\r\nQQ电脑城&lt;br /&gt;\r\n合峰电脑城\r\n	&lt;/div&gt;\r\n	&lt;div style=&quot;margin:0px;padding:0px;color:#444444;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n		&lt;br /&gt;\r\n&lt;strong&gt;江西（南昌）：&lt;br /&gt;\r\n&lt;/strong&gt;新大地电脑城&lt;br /&gt;\r\n东方电脑城\r\n	&lt;/div&gt;\r\n&lt;/p&gt;');

DROP TABLE IF EXISTS `fn_content_1_verify`;
CREATE TABLE `fn_content_1_verify` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `modelid` smallint(5) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tablename` char(30) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `content` longtext NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `modelid` (`modelid`,`updatetime`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_favorite`;
CREATE TABLE `fn_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL,
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `userid` (`userid`),
  KEY `site` (`site`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_form`;
CREATE TABLE `fn_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_ip`;
CREATE TABLE `fn_ip` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `addtime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_linkage`;
CREATE TABLE `fn_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `name` varchar(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchilds` varchar(200) NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`parentid`,`keyid`,`listorder`),
  KEY `keyid` (`site`,`keyid`),
  KEY `child` (`child`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `fn_linkage` VALUES('1','0','地区','0','0','','0','0');
INSERT INTO `fn_linkage` VALUES('2','1','地区一','0','1','2,6,7,8,9,10','1','0');
INSERT INTO `fn_linkage` VALUES('3','1','地区二','0','1','3,11,12,13','1','0');
INSERT INTO `fn_linkage` VALUES('4','1','地区三','0','1','4,14,15','1','0');
INSERT INTO `fn_linkage` VALUES('5','1','地区四','0','1','5,16,17,18','1','0');
INSERT INTO `fn_linkage` VALUES('6','1','街道11','2','0','6','1','0');
INSERT INTO `fn_linkage` VALUES('7','1','街道12','2','0','7','1','0');
INSERT INTO `fn_linkage` VALUES('8','1','街道13','2','0','8','1','0');
INSERT INTO `fn_linkage` VALUES('9','1','街道14','2','0','9','1','0');
INSERT INTO `fn_linkage` VALUES('10','1','街道15','2','0','10','1','0');
INSERT INTO `fn_linkage` VALUES('11','1','街道21','3','0','11','1','0');
INSERT INTO `fn_linkage` VALUES('12','1','街道22','3','0','12','1','0');
INSERT INTO `fn_linkage` VALUES('13','1','街道23','3','0','13','1','0');
INSERT INTO `fn_linkage` VALUES('14','1','街道31','4','0','14','1','0');
INSERT INTO `fn_linkage` VALUES('15','1','街道32','4','0','15','1','0');
INSERT INTO `fn_linkage` VALUES('16','1','街道4','5','0','16','1','0');
INSERT INTO `fn_linkage` VALUES('17','1','街道41','5','0','17','1','0');
INSERT INTO `fn_linkage` VALUES('18','1','街道42','5','0','18','1','0');

DROP TABLE IF EXISTS `fn_member`;
CREATE TABLE `fn_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(5) NOT NULL DEFAULT '1',
  `modelid` smallint(5) NOT NULL,
  `credits` int(10) NOT NULL,
  `regdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `randcode` varchar(32) NOT NULL,
  `lastloginip` varchar(15) NOT NULL,
  `lastlogintime` bigint(10) NOT NULL,
  `loginip` varchar(15) NOT NULL,
  `logintime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `status` (`status`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_member_count`;
CREATE TABLE `fn_member_count` (
  `id` mediumint(8) NOT NULL,
  `post` mediumint(5) NOT NULL,
  `pms` mediumint(5) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_member_group`;
CREATE TABLE `fn_member_group` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `credits` mediumint(8) NOT NULL,
  `allowpost` mediumint(8) NOT NULL,
  `allowpms` mediumint(8) NOT NULL,
  `allowattachment` tinyint(1) NOT NULL,
  `postverify` tinyint(1) NOT NULL,
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` smallint(5) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `fn_member_group` VALUES('1','新手上路','0','3','1','0','1','0','5','0','0');
INSERT INTO `fn_member_group` VALUES('2','普通会员','20','1','0','0','1','0','10','0','0');
INSERT INTO `fn_member_group` VALUES('3','中级会员','50','10','0','0','0','0','20','0','0');
INSERT INTO `fn_member_group` VALUES('4','高级会员','100','12','0','1','0','0','50','0','0');
INSERT INTO `fn_member_group` VALUES('5','金牌会员','200','100','10','1','0','0','0','0','0');

DROP TABLE IF EXISTS `fn_member_pms`;
CREATE TABLE `fn_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sendname` varchar(30) NOT NULL DEFAULT '',
  `sendid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toname` varchar(30) NOT NULL DEFAULT '',
  `toid` mediumint(8) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `sendtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `senddel` mediumint(8) NOT NULL,
  `todel` mediumint(8) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`),
  KEY `sendid` (`sendid`),
  KEY `hasview` (`hasview`),
  KEY `isadmin` (`isadmin`),
  KEY `toid` (`toid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_model`;
CREATE TABLE `fn_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(3) NOT NULL,
  `modelname` char(30) NOT NULL,
  `tablename` varchar(30) NOT NULL,
  `categorytpl` varchar(30) NOT NULL,
  `listtpl` varchar(30) NOT NULL,
  `showtpl` varchar(30) NOT NULL,
  `joinid` smallint(5) DEFAULT NULL,
  `setting` text,
  PRIMARY KEY (`modelid`),
  KEY `typeid` (`typeid`),
  KEY `site` (`site`),
  KEY `joinid` (`joinid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `fn_model` VALUES('1','1','1','文章','content_1_news','category_news.html','list_news.html','show_news.html','','a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');
INSERT INTO `fn_model` VALUES('2','1','1','图片','content_1_image','category_image.html','list_image.html','show_image.html','','a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');
INSERT INTO `fn_model` VALUES('3','1','1','房产','content_1_fang','list_fang.html','list_fang.html','show_fang.html','','a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');
INSERT INTO `fn_model` VALUES('4','1','1','下载','content_1_down','list_down.html','list_down.html','show_down.html','','a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');
INSERT INTO `fn_model` VALUES('5','1','1','商品','content_1_item','list_item.html','list_item.html','show_item.html','','a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}');

DROP TABLE IF EXISTS `fn_model_field`;
CREATE TABLE `fn_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `length` char(10) NOT NULL,
  `indexkey` varchar(10) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `tips` text NOT NULL,
  `not_null` tinyint(1) NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO `fn_model_field` VALUES('1','1','content','内容','','0','','1','','0','','','editor','array (\n  \'width\' => \'80\',\n  \'height\' => \'500\',\n  \'type\' => \'1\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('2','2','content','内容','','0','','1','','0','','','editor','array (\n  \'width\' => \'80\',\n  \'height\' => \'300\',\n  \'type\' => \'0\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('3','2','images','上传图片','TEXT','0','','1','','0','','','files','array (\n  \'type\' => \'jpg,jpeg,png,gif\',\n  \'size\' => \'2\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('4','3','content','内容','','0','','1','','0','','','editor','array (\n  \'width\' => \'90\',\n  \'height\' => \'200\',\n  \'type\' => \'0\',\n)','99','0');
INSERT INTO `fn_model_field` VALUES('6','3','quyu','区域','INT','5','INDEX','1','','0','','','linkage','array (\n  \'id\' => \'1\',\n  \'level\' => \'2\',\n)','1','0');
INSERT INTO `fn_model_field` VALUES('7','3','shi','室','TINYINT','2','','1','','0','','','input','array (\n  \'size\' => \'50\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('8','3','ting','厅','TINYINT','2','','1','','0','','','input','array (\n  \'size\' => \'50\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('9','3','wei','卫','TINYINT','2','','1','','0','','','input','array (\n  \'size\' => \'50\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('10','3','zhuangxiu','装修','VARCHAR','20','','1','','0','','','select','array (\n  \'content\' => \'毛坯\r\n简单\r\n精装\r\n豪华\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('11','3','louceng','楼层','TINYINT','2','','1','','0','','','input','array (\n  \'size\' => \'50\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('12','3','zongceng','总层','TINYINT','2','','1','','0','','','input','array (\n  \'size\' => \'50\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('13','3','zujin','租金','INT','5','','1','','0','','','input','array (\n  \'size\' => \'120\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('14','3','zujinleixing','租金类型','VARCHAR','30','','1','','0','','','select','array (\n  \'content\' => \'面议\r\n押一付三\r\n押一付一\r\n付半年\r\n付一年\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('15','3','mianji','面积','INT','20','','1','平方','0','','','input','array (\n  \'size\' => \'130\',\n)','6','0');
INSERT INTO `fn_model_field` VALUES('17','3','xiaoqu','小区','VARCHAR','50','','1','','0','','','input','array (\n  \'size\' => \'250\',\n)','2','0');
INSERT INTO `fn_model_field` VALUES('18','3','fangwuhuxing','房屋户型','','0','','1','','0','','','merge','array (\n  \'content\' => \'{shi}室 {ting}厅 {wei}卫 {zhuangxiu}\',\n)','3','0');
INSERT INTO `fn_model_field` VALUES('19','3','loucengleixing','楼层类型','','0','','1','','0','','','merge','array (\n  \'content\' => \'{louceng}楼，共{zongceng}楼\',\n)','4','0');
INSERT INTO `fn_model_field` VALUES('20','3','zujingzuhe','租金','','0','','1','','0','','','merge','array (\n  \'content\' => \'{zujin}元/月，{zujinleixing}\',\n)','5','0');
INSERT INTO `fn_model_field` VALUES('21','3','peizhi','房屋配置','','0','','1','','0','','','checkbox','array (\n  \'content\' => \'床\r\n热水器\r\n洗衣机\r\n空调\r\n冰箱\r\n电视\r\n宽带\r\n沙发\r\n衣柜\',\n)','7','0');
INSERT INTO `fn_model_field` VALUES('22','3','tupian','房屋图片','','0','','1','','0','','','files','array (\n  \'type\' => \'jpg,jpeg,png,gif\',\n  \'size\' => \'2\',\n)','8','0');
INSERT INTO `fn_model_field` VALUES('25','3','dizhi','地址','VARCHAR','200','','1','','0','','','input','array (\n  \'size\' => \'300\',\n)','8','0');
INSERT INTO `fn_model_field` VALUES('26','3','dianhua','联系电话','VARCHAR','40','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','9','0');
INSERT INTO `fn_model_field` VALUES('27','3','ditu','地图','VARCHAR','100','','1','','0','','','map','array (\n  \'apikey\' => \'D8DA516A60D11BE12A649224CD1DEB373AEAB063\',\n  \'city\' => \'成都\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('28','4','content','软件介绍','','','','1','','0','','','editor','array (\n  \'width\' => \'90\',\n  \'height\' => \'200\',\n  \'type\' => \'1\',\n)','99','0');
INSERT INTO `fn_model_field` VALUES('29','5','content','商品描述','','','','1','','0','','','editor','array (\n  \'width\' => \'90\',\n  \'height\' => \'300\',\n  \'type\' => \'1\',\n)','99','0');
INSERT INTO `fn_model_field` VALUES('30','4','version','软件版本','CHAR','20','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('31','4','language','软件语言','CHAR','20','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('32','4','os','操作系统','','','','1','','0','','','checkbox','array (\n  \'content\' => \'winxp\r\nwin2003\r\nwin7\r\nwin8\r\nwin9\r\nlinux\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('33','4','developers','软件作者','CHAR','20','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('34','4','softsize','软件大小','CHAR','20','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('35','4','downdata','下载地址','','','','1','','0','','','files','array (\n  \'type\' => \'zip,rar\',\n  \'size\' => \'20\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('36','5','jiage','商品价格','DECIMAL','10,2','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('37','5','shuliang','商品数量','MEDIUMINT','8','','1','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');
INSERT INTO `fn_model_field` VALUES('38','5','chushou','已经出售','MEDIUMINT','8','','0','','0','','','input','array (\n  \'size\' => \'\',\n)','0','0');

DROP TABLE IF EXISTS `fn_oauth`;
CREATE TABLE `fn_oauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `oauth_openid` varchar(80) NOT NULL DEFAULT '',
  `oauth_name` varchar(30) NOT NULL DEFAULT '',
  `oauth_data` text NOT NULL,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `logintimes` bigint(10) unsigned NOT NULL DEFAULT '0',
  `logintime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `site` (`oauth_openid`,`oauth_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_plugin`;
CREATE TABLE `fn_plugin` (
  `pluginid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) NOT NULL,
  `markid` smallint(5) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `controller` varchar(30) NOT NULL DEFAULT '',
  `dir` varchar(30) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT '0',
  `setting` text NOT NULL,
  PRIMARY KEY (`pluginid`),
  UNIQUE KEY `dir` (`dir`),
  KEY `markid` (`markid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fn_plugin` VALUES('1','1','1002','数据库工具','数据备份功能根据您的选择备份全部FineCMS数据，导出的数据文件可用“数据恢复”功能或 phpMyAdmin 导入。','','database','finecms','1.5','0','array (\n)');

DROP TABLE IF EXISTS `fn_position`;
CREATE TABLE `fn_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `fn_position` VALUES('1','1','0','首页头条','1');
INSERT INTO `fn_position` VALUES('2','1','0','首页推荐','4');
INSERT INTO `fn_position` VALUES('3','1','0','首页幻灯','5');
INSERT INTO `fn_position` VALUES('4','1','1','栏目头条','1');
INSERT INTO `fn_position` VALUES('5','1','1','栏目首页','1');
INSERT INTO `fn_position` VALUES('6','1','1','栏目推荐','10');

DROP TABLE IF EXISTS `fn_position_data`;
CREATE TABLE `fn_position_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) NOT NULL,
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` mediumint(8) DEFAULT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '0',
  `title` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`),
  KEY `catid` (`catid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO `fn_position_data` VALUES('1','0','1','0','','FineCMS演示站点','FineCMS是一款基于PHP+MySql开发的内容管理系统,采用MVC设计模式，实现业务逻辑与表现层的适当分离...','http://www.finecms.net','0');
INSERT INTO `fn_position_data` VALUES('2','0','2','0','','Apache(.htaccess)和IIS(http.ini)伪静态规则','','http://bbs.finecms.net/forum.php?mod=viewthread&amp;tid=6&amp;extra=page%3D1','0');
INSERT INTO `fn_position_data` VALUES('3','0','2','0','','系统核心配置 SYS_DOMAIN 说明','','http://bbs.finecms.net/forum.php?mod=viewthread&amp;tid=4&amp;extra=page%3D1','0');
INSERT INTO `fn_position_data` VALUES('4','0','2','0','','自定义路由规则详解','','http://bbs.finecms.net/forum.php?mod=viewthread&amp;tid=3&amp;extra=page%3D1','0');
INSERT INTO `fn_position_data` VALUES('5','0','2','0','','FineCMS 模板标签详解','','http://bbs.finecms.net/forum.php?mod=viewthread&amp;tid=5&amp;extra=page%3D1','0');
INSERT INTO `fn_position_data` VALUES('6','0','3','0','http://www.finecms.net/views/default/images/logo.png','FineCMS演示站点','','http://www.finecms.net/','0');
INSERT INTO `fn_position_data` VALUES('7','5','4','0','','前拳王泰森将在百老汇上演脱口秀','继成功在“赌城”美国拉斯韦加斯成功连演6场后，由前重量级“拳王”迈克·泰森主演的名为“迈克·泰森：无可争议的真相”的脱口秀将于7月31日至8月5日在百老汇连演6场。泰森和脱口秀导演斯派克·李以及百老汇音乐剧...','index.php?c=content&amp;a=show&amp;id=21','0');
INSERT INTO `fn_position_data` VALUES('8','5','5','0','','6月21日微博名言录:柯震东手术成功微博报喜','柯震東Kai：手术很成功！我很好！老天一定听到了所有人的祝福！所以我现在很好！谢谢所有人的祝福！我很快就会再出发：)　　背景：台湾艺人柯震东因后脑脂肪....','index.php?c=content&amp;a=show&amp;id=20','0');
INSERT INTO `fn_position_data` VALUES('9','2','6','0','','北京1名垃圾站站长贪污上万元被公诉','据检方指控，2010年7月至2011年7月间，张某利用经手收取垃圾清运费的便利，采用减低收费价格、不开具发票等方式，截留侵吞应上缴的垃圾清运费共计人民币1.3万元。公诉机关认为，应以贪污罪追究张某的刑事责任。记者...','index.php?c=content&a=show&id=9','0');
INSERT INTO `fn_position_data` VALUES('10','9','6','0','http://i2.sinaimg.cn/ent/http/slide.ent.sina.com.cn/U2398P28T3D3664700F522DT20120621104403.jpg','殷桃气质典雅(','近日，热播剧《我和老妈一起嫁》女主角殷桃曝光了一组全新写真，明艳动人，凸显殷桃时尚冷艳气质，诠释了别样的典雅风情，尽显大气与妩媚。','index.php?c=content&amp;a=show&amp;id=29','0');
INSERT INTO `fn_position_data` VALUES('11','9','6','0','http://i3.sinaimg.cn/ent/http/slide.ent.sina.com.cn/U2398P28T3D3664803F522DT20120621115725.jpg','阚清子绝美冰美人','爱在屋檐下》热播，阚清子最近也是人气大增。最近，她曝光了一组早前拍摄的夏日“透明”人物大片，大片中她一反平日的甜美清新，化身冷艳大气的“冰美人”。...','index.php?c=content&amp;a=show&amp;id=27','0');
INSERT INTO `fn_position_data` VALUES('12','5','6','0','','前拳王泰森将在百老汇上演脱口秀','继成功在“赌城”美国拉斯韦加斯成功连演6场后，由前重量级“拳王”迈克·泰森主演的名为“迈克·泰森：无可争议的真相”的脱口秀将于7月31日至8月5日在百老汇连演6场。泰森和脱口秀导演斯派克·李以及百老汇音乐剧...','index.php?c=content&amp;a=show&amp;id=21','0');
INSERT INTO `fn_position_data` VALUES('13','7','6','0','http://static11.photo.sina.com.cn/middle/6ad6f8edtvb1bhhsqe4ei&amp;690','古装剧中十大让人难以忘怀的角色','金庸小说被拍成电影后大部分面目全非，和原著相差十万八千里，如星爷的《鹿鼎记》、徐老怪的《笑傲江湖》，幸运的是，李连杰版《倚天屠龙记》改编得并不那么离谱。在李连杰的演绎下，一向软弱的张无忌相当霸气，令读...','index.php?c=content&amp;a=show&amp;id=23','0');
INSERT INTO `fn_position_data` VALUES('14','2','6','0','','北京1名垃圾站站长贪污上万元被公诉','据检方指控，2010年7月至2011年7月间，张某利用经手收取垃圾清运费的便利，采用减低收费价格、不开具发票等方式，截留侵吞应上缴的垃圾清运费共计人民币1.3万元。公诉机关认为，应以贪污罪追究张某的刑事责任。记者...','index.php?c=content&amp;a=show&amp;id=9','0');
INSERT INTO `fn_position_data` VALUES('15','2','6','0','','蛟龙22日5时准备第三次下潜试验','据了解，这次下潜时间预计达10小时，计划下潜深度为6960米左右。试验任务是按照已定的海试计划，继续对潜水器各项指标进行验证和考核，同时对前两次下潜出现故障的改进情况进行验证，为最终冲击7000米深度做好充分准...','index.php?c=content&amp;a=show&amp;id=3','0');
INSERT INTO `fn_position_data` VALUES('16','0','6','0','','全局栏目显示','','/','0');
INSERT INTO `fn_position_data` VALUES('21','2','6','9','','北京1名垃圾站站长贪污上万元被公诉','据检方指控，2010年7月至2011年7月间，张某利用经手收取垃圾清运费的便利，采用减低收费价格、不开具发票等方式，截留侵吞应上缴的垃圾清运费共计人民币1.3万元。公诉机关认为，应以贪污罪追究张某的刑事责任。记者...','index.php?c=content&a=show&id=9','0');
INSERT INTO `fn_position_data` VALUES('19','2','2','9','','北京1名垃圾站站长贪污上万元被公诉','据检方指控，2010年7月至2011年7月间，张某利用经手收取垃圾清运费的便利，采用减低收费价格、不开具发票等方式，截留侵吞应上缴的垃圾清运费共计人民币1.3万元。公诉机关认为，应以贪污罪追究张某的刑事责任。记者...','index.php?c=content&a=show&id=9','0');
INSERT INTO `fn_position_data` VALUES('22','2','6','31','','北京谋智火狐信息技术有限公司版权所有','','index.php?c=content&a=show&id=31','0');
INSERT INTO `fn_position_data` VALUES('23','58','1','43','http://www.pccn.com.cn/uploads/pictures/2013-11-07/51_1383816647.jpg','关于中渠','中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和...','','0');

DROP TABLE IF EXISTS `fn_relatedlink`;
CREATE TABLE `fn_relatedlink` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fn_role`;
CREATE TABLE `fn_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `fn_role` VALUES('1','超级管理员','超级管理员');
INSERT INTO `fn_role` VALUES('2','总编','总编');
INSERT INTO `fn_role` VALUES('3','编辑','编辑');

DROP TABLE IF EXISTS `fn_search`;
CREATE TABLE `fn_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `params` varchar(32) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` text NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `params` (`params`,`addtime`),
  KEY `modelid` (`modelid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `fn_search` VALUES('1','0','0','88302dd14de9151d74d5cf28e81e1c4b','麦当娜','1383657778','SELECT * FROM fn_content_1 WHERE `fn_content_1`.`id` IN (22)','1');
INSERT INTO `fn_search` VALUES('2','0','0','99f9dbe90c57a79abe0dba6a8bbe549b','北京','1383724076','SELECT * FROM fn_content_1 WHERE `fn_content_1`.`id` IN (31,9,30,28,2)','5');
INSERT INTO `fn_search` VALUES('3','0','0','03055a8791646242b9a628a30ae0e6cd','油菜','1384233691','SELECT * FROM fn_content_1 WHERE `fn_content_1`.`id` IN (49,45)','2');

DROP TABLE IF EXISTS `fn_tag`;
CREATE TABLE `fn_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `letter` varchar(200) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`letter`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO `fn_tag` VALUES('1','信息技术','xinxijishu','0');
INSERT INTO `fn_tag` VALUES('2','有限公司','youxiangongsi','0');
INSERT INTO `fn_tag` VALUES('3','火狐','huohu','0');
INSERT INTO `fn_tag` VALUES('4','中渠传媒','zhongquchuanmei','0');
INSERT INTO `fn_tag` VALUES('5','孙海渠道','sunhaiqudao','0');
INSERT INTO `fn_tag` VALUES('6','油菜花','youcaihua','0');
INSERT INTO `fn_tag` VALUES('7','手机刷卡器','shoujishuakaqi','0');
INSERT INTO `fn_tag` VALUES('8','pos设备','posshebei','0');
INSERT INTO `fn_tag` VALUES('9','晴天','qingtian','0');
INSERT INTO `fn_tag` VALUES('10','电商','dianshang','0');
INSERT INTO `fn_tag` VALUES('11','用户','yonghu','0');
INSERT INTO `fn_tag` VALUES('12','成交额','chengjiaoe','0');
INSERT INTO `fn_tag` VALUES('13','智能机','zhinengji','0');
INSERT INTO `fn_tag` VALUES('14','联想','lianxiang','0');
INSERT INTO `fn_tag` VALUES('15','国产','guochan','0');
INSERT INTO `fn_tag` VALUES('16','阿里','ali','0');
INSERT INTO `fn_tag` VALUES('17','移动应用','yidongyingyong','0');
INSERT INTO `fn_tag` VALUES('18','移动互联网','yidonghulianwang','0');
INSERT INTO `fn_tag` VALUES('19','马化腾','mahuateng','0');
INSERT INTO `fn_tag` VALUES('20','中国移动','zhongguoyidong','0');
INSERT INTO `fn_tag` VALUES('21','互联网','hulianwang','0');
INSERT INTO `fn_tag` VALUES('22','信息','xinxi','0');
INSERT INTO `fn_tag` VALUES('23','胜利','shengli','0');
INSERT INTO `fn_tag` VALUES('24','浪潮','langchao','0');
INSERT INTO `fn_tag` VALUES('25','移动电源','yidongdianyuan','0');
INSERT INTO `fn_tag` VALUES('26','杂志','zazhi','0');
INSERT INTO `fn_tag` VALUES('27','张学友','zhangxueyou','0');
INSERT INTO `fn_tag` VALUES('28','演唱会','yanchanghui','0');
INSERT INTO `fn_tag` VALUES('29','销售部','xiaoshoubu','0');
INSERT INTO `fn_tag` VALUES('30','户外拓展','huwaituozhan','0');
INSERT INTO `fn_tag` VALUES('31','海龙','hailong','0');
INSERT INTO `fn_tag` VALUES('32','太平洋','taipingyang','0');
INSERT INTO `fn_tag` VALUES('33','总经理','zongjingli','0');
INSERT INTO `fn_tag` VALUES('34','港澳台电脑商会','gangaotaidiannaoshanghui','0');
INSERT INTO `fn_tag` VALUES('35','化工部','huagongbu','0');
INSERT INTO `fn_tag` VALUES('36','香港','xianggang','0');
INSERT INTO `fn_tag` VALUES('37','总裁','zongcai','0');
INSERT INTO `fn_tag` VALUES('38','秘书长','mishuchang','0');

DROP TABLE IF EXISTS `fn_tag_cache`;
CREATE TABLE `fn_tag_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `params` varchar(32) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` mediumtext NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `params` (`params`,`addtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fn_tag_cache` VALUES('1','3978f8182990847b4a8de64c87e5152b','youcaihua','1384152353','SELECT * FROM fn_content_1 WHERE `id` IN (45) ORDER BY `updatetime` DESC','1');

DROP TABLE IF EXISTS `fn_user`;
CREATE TABLE `fn_user` (
  `userid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) DEFAULT NULL COMMENT '站点id',
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` char(10) NOT NULL,
  `roleid` int(3) NOT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` bigint(10) unsigned DEFAULT '0',
  `loginip` varchar(15) DEFAULT NULL,
  `logintime` bigint(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) DEFAULT '',
  `usermenu` text,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fn_user` VALUES('1','','admin','ee92173d79ff61329fec268ad5e019f2','560f3baa40','1','219.135.252.168','1384302627','183.246.134.104','1384317927','','网站创始人','');

