# finecms bakfile
# version:1.7.8 
# time:2013-11-11 10:14:12
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `fn_category` VALUES('1','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','导购','','','','','','news','/index.php?c=content&a=list&catid=1','','0','2','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('26','1','1','2','0','21,1,24,25,26,22,23,16,15','0','','案例','','','','','','案例','/index.php?c=content&a=list&catid=26','','0','5','1','category_image.html','list_image.html','show_image.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('15','1','1','4','0','21,1,24,25,26,22,23,16,15','0','','下载','','','','','','xiazai','/index.php?c=content&a=list&catid=15','','0','9','1','list_down.html','list_down.html','show_down.html','array (\n  \'memberpost\' => \'0\',\n  \'url\' => \n  array (\n    \'use\' => \'0\',\n    \'tohtml\' => \'0\',\n    \'htmldir\' => \'html\',\n    \'list\' => \'\',\n    \'list_page\' => \'\',\n    \'show\' => \'\',\n    \'show_page\' => \'\',\n  ),\n)','20');
INSERT INTO `fn_category` VALUES('16','1','1','5','0','21,1,24,25,26,22,23,16,15','0','','合作','','','','','','合作','/index.php?c=content&a=list&catid=16','','0','8','1','list_item.html','list_item.html','show_item.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('24','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','人物','','','','','','renwu','/index.php?c=content&a=list&catid=24','','0','3','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('25','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','推广','','','','','','tuiguang','/index.php?c=content&a=list&catid=25','','0','4','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('21','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','新闻','','','','','','xinwen','/index.php?c=content&a=list&catid=21','','1','1','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');
INSERT INTO `fn_category` VALUES('22','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','动态','','','','','','dongtai','/index.php?c=content&a=list&catid=22','','0','6','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','2');
INSERT INTO `fn_category` VALUES('23','1','1','1','0','21,1,24,25,26,22,23,16,15','0','','中渠','','','','','','zhongqu','/index.php?c=content&a=list&catid=23','','3','7','1','category_news.html','list_news.html','show_news.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}','20');

DROP TABLE IF EXISTS `fn_content`;
CREATE TABLE `fn_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO `fn_content` VALUES('41');
INSERT INTO `fn_content` VALUES('42');
INSERT INTO `fn_content` VALUES('43');
INSERT INTO `fn_content` VALUES('44');
INSERT INTO `fn_content` VALUES('45');
INSERT INTO `fn_content` VALUES('46');
INSERT INTO `fn_content` VALUES('47');
INSERT INTO `fn_content` VALUES('48');

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

INSERT INTO `fn_content_1` VALUES('45','23','1','油菜花点评，移动互联网最有商业价值的APP','http://www.pccn.com.cn/uploads/pictures/2013-11-07/96_1383824376.jpg','油菜花','油菜花是中渠传媒在移动互联网大数据时代，全新推出的一个手机APP应用。关于油菜花这个名字的来历，来源于成龙主演的电影《大兵小将》里面的主题歌，歌名就叫《油菜花》，讲叙了一个小兵只想回家种良田五亩的梦想，...','/index.php?c=content&a=show&id=45','0','1','28','1','0','admin','1383824430','1383826580');
INSERT INTO `fn_content_1` VALUES('44','23','1','《孙海渠道》IT渠道杂志','http://www.pccn.com.cn/uploads/pictures/2013-11-07/62_1383823141.jpg','孙海渠道','《孙海渠道》渠道杂志《孙海渠道》是一本IT渠道行业最专业的渠道杂志，是一本非常实用的IT同行内部调货指南，也是IT人员的从业手册，更是各大公司企业政府机关采购部门的IT采购宝典。《孙海渠道》始终坚持真实反映渠...','/index.php?c=content&a=show&id=44','2','1','12','1','0','admin','1383823270','1383826359');
INSERT INTO `fn_content_1` VALUES('47','26','2','封面客户','uploadfiles/image/201311/57.jpg','','服务好客户，为客户创造最大的利益是我们存在的价值！','/index.php?c=content&a=show&id=47','0','1','19','1','0','admin','1383881310','1383892619');
INSERT INTO `fn_content_1` VALUES('48','26','2','POS设备客户','uploadfiles/image/201311/11.jpg','pos设备','','/index.php?c=content&a=show&id=48','0','1','4','1','0','admin','1383889421','1383889421');
INSERT INTO `fn_content_1` VALUES('43','23','1','关于中渠传媒','http://www.pccn.com.cn/uploads/pictures/2013-11-07/51_1383816647.jpg','中渠传媒','中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和...','/index.php?c=content&a=show&id=43','1','1','31','1','0','admin','1383814099','1383818421');
INSERT INTO `fn_content_1` VALUES('41','21','1','中渠简介','http://d.hiphotos.bdimg.com/album/s%3D680%3Bq%3D90/sign=f08edd1cb64543a9f11bf9c42e2cfbbf/2fdda3cc7cd98d10427e0fd9203fb80e7aec90ab.jpg','','中渠简介','/index.php?c=content&a=show&id=41','3','1','15','1','0','admin','1383700962','1383783854');

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

INSERT INTO `fn_content_1_extend` VALUES('43','23','','','1');

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

INSERT INTO `fn_content_1_news` VALUES('45','23','&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花是中渠传媒在移动互联网大数据时代，全新推出的一个手机&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;APP&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;应用。&lt;span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;&quot;&gt;关于油菜花这个名字的来历，来源于成龙主演的电影《大兵小将》里面的主题歌，歌名就叫《油菜花》，&lt;/span&gt;&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;讲叙了一个小兵只想回家种良田五亩的梦想，这个手机应用取名油菜花，寓意我们在&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;渠道行业里面，&lt;span style=&quot;color:#333333;font-family:微软雅黑, sans-serif;font-size:14px;line-height:21px;background-color:#FFFFFF;&quot;&gt;先脚踏实地，&lt;/span&gt;用心种好这五亩田。一株油菜花很普通，但成片的油菜花在一起竞相开放，则是阳春三月里最漂亮的风景。&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;渠道商家，大部分都是中小型公司，虽然普通，但都有自己的梦想，当这些商家因为某一个信念聚集到一起的时候，就会成为最美丽的风景，油菜花应用，在为了这片最美的景色而努力。当然，油菜花还含有有才华的意思，寓意一群虽然普通但是有才华的人为了梦想而在努力，还有：油菜花=有财发，虽然有点俗，但接地气。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花应用的根本目的，就是要为消费者提供方便，成为消费者信任的推荐产品推荐商家的平台。在这个平台上，消费者随时能找到产品行家咨询，当他信任这个商家，信任这个产品时，他用手机直接在&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;APP&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;里面点击网店页面直接购买了。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;举个例子，你的老式笔记本用了&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;4,5&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;年，实在是看着厌烦，你想必须要换一台新的了。新的笔记本应该是时尚的，有面子的，当然性价比也要高。你需要解决的第一个问题是：我需要买哪个品牌哪个型号的笔记本，最符合我的需求。第二个问题是：我找谁购买。第三个问题是：售后服务和技术支持找谁最合适？也许你会想，几千元的电脑，上京东，找个型号，喜欢就可以，不用这么麻烦。是的，不把钱当钱的人都这么想，但真正会过日子的人，还是会慎重些。假如，你想买辆小汽车呢？&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;这个时候，绝大部分消费者会去研究产品，了解产品参数，了解产品性能，兄弟姐妹们，我只想问个问题，你不是靠卖这个产品吃饭，只是为了买它，为什么要花这么多时间来研究你购买的产品？你对产品越了解，花的时间就越多，你又真的能确定这个产品就是你所需要的？我们经过自己的研究判断，购买的大部分产品在角落里睡大觉，这样的经历还少吗？我们挣钱很辛苦，但我们一如既往的购买了大量的闲置产品。因为你不再相信产品销售员的鬼话，他们只想拼命把产品卖给你，而不管你的真实需求，所以你要自己研究。你甚至会说，这就是生活。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;是的，这是生活，但我们可以变得更好。我们的时间可以更自由，你只需要身边有一个值得信任的产品顾问就足够了。他能站在你的角度，客观中立的帮你推荐最合适的产品给你，包括电脑，相机，办公产品，甚至小汽车。他不靠卖产品给你挣差价的钱，所以，你们之间不是对立的。假如说你身边有这么一个朋友，在&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;这个行业待了&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;10&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;多年，能帮你推荐任何&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;类，消费电子类产品，你应该会因为有这么一个朋友的存在而感到高兴吧？当他推荐的产品能合你的心意的时候，你应该还会请他去一个比较有情调的地方去喝喝小酒，吃个饭，不是吗？&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花值得信任吗？时间久了，自然就知道了，油菜花自有它的运营之道。服务也方便吧？但油菜花的专长并不仅仅只有这些。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#333333;font-family:微软雅黑, sans-serif;&quot;&gt;油菜花应用能让你咨询整个行业的专家，只要你愿意。油菜花将本地做得好的商家清晰的展示到你的面前，其他用户对这些商家的意见你也能清晰的看到。看中了哪个商家，直接找他购买吧。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花应用能推荐最合适的商家给您，他们是否合适，评判标准最主要的&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;条：对产品了解是否专业，服务是否贴心。这个时候，油菜花成为了你购买和维修&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;IT&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;产品时找周边值得信任的商家的工具。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花应用当然也是一个同行报价平台，你修改了产品的价格，收听你价格的同行马上就知道。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;还有很多其他有意思的功能，下载一个试一试，就知道了，下载地址：&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;a href=&quot;http://app.pccn.com.cn./&quot; target=&quot;_blank&quot;&gt;http://app.pccn.com.cn&lt;/a&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p align=&quot;left&quot; style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;油菜花&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;APP&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;应用，还在油菜地里，刚刚才发芽，但已经露出了蓬勃的生机。精心呵护，需要更多的人手，我们也非常欢迎你的加盟。&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:Tahoma, \'Microsoft Yahei\';font-size:14px;background-color:#FFFFFF;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-family:微软雅黑, sans-serif;color:#333333;font-size:9pt;&quot;&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;虽然还是小小油菜花，但依然可以变成传奇&lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;.&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('41','21','&lt;p&gt;\r\n	《孙海渠道》杂志\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;http://b252.photo.store.qq.com/psb?/V10n7srO29SUQO/pX68I*Ht5JIpsYwDfmHSEcoS87i8Z9YOYajZRekwVxM!/b/dAXlPpYfGgAA&amp;bo=IAMVAugDmgIBAGA!&amp;rf=photoDetail&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;');
INSERT INTO `fn_content_1_news` VALUES('43','23','&lt;p&gt;\r\n	中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。 中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和省事。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;http://www.pccn.com.cn/uploads/pictures/2013-11-07/51_1383816647.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒地处广州市最繁华的商业圈，摩登百货，地中海酒店，太古汇，万菱汇，正佳广场，天河城，依次相邻，拔地而起，共同组成了南中国最繁华地带，这里也是华南IT产品集散地。公司在甲级写字楼展望数码广场18楼办公。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;http://www.pccn.com.cn/uploads/pictures/2013-11-07/13_1383817523.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒有三大平台产品：《孙海渠道》杂志，油菜花app手机平台和油菜花点评网。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	中渠传媒创始人孙海彬先生为暨南大学工商管理硕士，在互联网和IT行业有11年的行业经验，思维睿智，经验丰富。同时中渠传媒有非常优秀的设计团队和技术团队，能为客户提供最优秀的解决方案。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp; 中渠的宗旨是帮我们的客户在IT产品渠道领域，做出最有效的品牌推广和带来最有价值的经销商。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;http://www.pccn.com.cn/uploads/pictures/2013-11-07/62_1383817290.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	微信公共账号：Ucaihua\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	办公电话：020-62805066，62805055\r\n&lt;/p&gt;\r\n广州市天河区石牌西路8号展望数码广场18楼15，16房');
INSERT INTO `fn_content_1_news` VALUES('44','23','&lt;p&gt;\r\n	《孙海渠道》渠道杂志\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	《孙海渠道》是一本IT渠道行业最专业的渠道杂志，是一本非常实用的IT同行内部调货指南，也是IT人员的从业手册，更是各大公司企业政府机关采购部门的IT采购宝典。《孙海渠道》始终坚持真实反映渠道现状，专业团队运作，为客户提供最准确最完整最专业的行业资讯。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	《孙海渠道》从2005年创刊开始，到今天已经走过了8个年头，平均一个季度出刊一期，已经出刊37期。覆盖整个华南地区，影响超过10万行业人士。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;b&gt;杂志特点：全面,&lt;/b&gt;&lt;b&gt;准确,&lt;/b&gt;&lt;b&gt;快速,&lt;/b&gt;&lt;b&gt;便捷&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;/b&gt;&lt;b&gt;全面:&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	绝大部分&lt;span&gt;IT&lt;/span&gt;产品&lt;span&gt;,&lt;/span&gt;都可以通过&lt;span&gt;&amp;lt;&amp;lt;&lt;/span&gt;孙海渠道&lt;span&gt;&amp;gt;&amp;gt;,&lt;/span&gt;找到该产品在本区域的总代&lt;span&gt;,&lt;/span&gt;分销商，零售商，官方售后点，维修店。因为&lt;span&gt;IT&lt;/span&gt;行业产品种类繁多&lt;span&gt;,&lt;/span&gt;更新速度快&lt;span&gt;,&lt;/span&gt;所以即使&lt;span&gt;IT&lt;/span&gt;专业资深人士也很难不借助工具就可以迅速找到客户所需要的产品&lt;span&gt;.&lt;/span&gt;《孙海渠道》能马上为您提供所需的资讯。&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;准确&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	每一期刊物推出&lt;span&gt;,&lt;/span&gt;里面的每一条资讯都经过我们工作人员的认真仔细跟踪核对及更新&lt;span&gt;,&lt;/span&gt;以确保资讯准确无误&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;便捷&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	按产品类型详细分类&lt;span&gt;,&lt;/span&gt;通过目录迅速寻找所需产品&lt;span&gt;. 1/4A4&lt;/span&gt;大小&lt;span&gt;,&lt;/span&gt;方便随身携带&lt;span&gt;,&lt;/span&gt;无论您在办公室&lt;span&gt;,&lt;/span&gt;还是在家里&lt;span&gt;,&lt;/span&gt;无论是在送货途中&lt;span&gt;,&lt;/span&gt;还是在回家的车上&lt;span&gt;;&lt;/span&gt;无论是放在手提袋中&lt;span&gt;,&lt;/span&gt;还是放在口袋里&lt;span&gt;,&lt;/span&gt;您随时都可以用上它&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;b&gt;快速&lt;span&gt;:&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	每三个月出一期&lt;span&gt;,&lt;/span&gt;确保准确把握最新的市场动态&lt;span&gt;.&lt;/span&gt;确保把最新&lt;span&gt;,&lt;/span&gt;最准确信息带给用户&lt;span&gt;.&lt;/span&gt;极大的降低用户的时间成本&lt;span&gt;.&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;欢迎各大厂商朋友选择中渠传媒整合资源优势做渠道品牌推广！\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt;联系方式：020-62805066&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	微信公众账号：&lt;span&gt;Ucaihua&lt;/span&gt; \r\n&lt;/p&gt;\r\n广州市天河区石牌西路8号展望数码广场18楼15，16房\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');

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
INSERT INTO `fn_position_data` VALUES('23','23','1','43','http://www.pccn.com.cn/uploads/pictures/2013-11-07/51_1383816647.jpg','关于中渠传媒','中渠传媒成立于2005年，是一家专注于IT行业的传媒公司。中渠传媒一直致力于成为中国最优秀的优质产品优质商家推荐和评级公司，为消费者提供参考信息，带来消费者最有价值的数据，最好的用户体验，以及尽可能的方便和...','','0');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fn_search` VALUES('1','0','0','88302dd14de9151d74d5cf28e81e1c4b','麦当娜','1383657778','SELECT * FROM fn_content_1 WHERE `fn_content_1`.`id` IN (22)','1');
INSERT INTO `fn_search` VALUES('2','0','0','99f9dbe90c57a79abe0dba6a8bbe549b','北京','1383724076','SELECT * FROM fn_content_1 WHERE `fn_content_1`.`id` IN (31,9,30,28,2)','5');

DROP TABLE IF EXISTS `fn_tag`;
CREATE TABLE `fn_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `letter` varchar(200) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`letter`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `fn_tag` VALUES('1','信息技术','xinxijishu','0');
INSERT INTO `fn_tag` VALUES('2','有限公司','youxiangongsi','0');
INSERT INTO `fn_tag` VALUES('3','火狐','huohu','0');
INSERT INTO `fn_tag` VALUES('4','中渠传媒','zhongquchuanmei','0');
INSERT INTO `fn_tag` VALUES('5','孙海渠道','sunhaiqudao','0');
INSERT INTO `fn_tag` VALUES('6','油菜花','youcaihua','0');
INSERT INTO `fn_tag` VALUES('7','手机刷卡器','shoujishuakaqi','0');
INSERT INTO `fn_tag` VALUES('8','pos设备','posshebei','0');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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

INSERT INTO `fn_user` VALUES('1','','admin','ee92173d79ff61329fec268ad5e019f2','560f3baa40','1','58.62.198.194','1383869806','115.226.117.247','1384135215','','网站创始人','');

