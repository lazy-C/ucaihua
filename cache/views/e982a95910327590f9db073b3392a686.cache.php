<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title><?php echo CMS_NAME; ?>网站管理系统 V<?php echo CMS_VERSION; ?> 安装向导</title>
<link rel="stylesheet" type="text/css" href="<?php echo SITE_THEME; ?>../install/install.css" />
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
</head>
<body>
<div class="width">
	<div class="m10">
    	<div class="logo"><span>环境检测</span><img src="<?php echo SITE_THEME; ?>../install/install.png" /></div>
        <div class="table">
        	<div class="left">
            	<li><span><?php echo CMS_VERSION?></span>程序版本</li>
            	<li><span><?php echo $php_pass ? '<div class="yes"></div>' : '<span style="color:red;font-size:12px;">PHP最低要求5.2.0</span>';?></span>PHP版本</li>
                <li><span><?php echo $mysql_pass ? '<div class="yes"></div>' : '<span style="color:red;font-size:12px;">不支持</span>';?></span>MySQL版本</li>
                <li><span><?php echo $gd_pass  ? '<div class="yes"></div>' : '<span style="color:red;font-size:12px;">无法处理图片</span>';?></span>GD库</li>
                <li><span><?php echo $is_json  ? '<div class="yes"></div>' : '<span style="color:red;font-size:12px;">不支持</span>';?></span>JSON</li>
                <div class="About">
                 	<div class="ico_1"><a href="http://www.finecms.net" target="_blank" >官网</a></div>
                    <div class="ico_2"><a href="http://bbs.finecms.net" target="_blank" >论坛</a></div>
                </div>
            </div>
            <div class="right">
				<span id="finecms_version" class="vck f12 m10">&nbsp;</span>
            	<div class="m10 f12">
            	<?php
                if ($urlopen) {
                    echo '<b><span style="color:red;">系统检测到' . $urlopen . '
                    <br><br>将无法获取远程数据以及无法使用在线升级功能，建议打开（<a href="http://bbs.finecms.net/forum.php?mod=viewthread&tid=100&extra=" target="_blank" style="color:red;">打开方式</a>）!</span> <br> <br></b>';  
                }
				if (is_null($json_data)) {
				    echo '<b><span style="color:red;">系统检测到PHP版本不支持JSON数据格式 <br> <br></b>';  
				}
                if ($pass) {
                    echo '你服务器环境配置通过了检测，点击下一步继续安装吧';
                } else {
                    echo '<span style="color:red;">sorry 服务器环境配置未通过检测，安装无法进行!</span> <br/><br/>&nbsp;&nbsp;请按提示配置好服务器环境后重新运行本安装向导。';
                }
                ?>
                </div>
            </div>
        </div>
		<div class="bnt">
			<form action="<?php echo url('install/'); ?>" method="post" id="dform">
			<input type="hidden" name="step" value="3"/>
			<input type="button" class="n" value="上一步" onclick="history.back(-1);"/>
			<input type="submit" class="n" value="下一步"<?php if(!$pass) echo ' disabled';?>/>
			<input type="button" value="取消" class="c" onclick="if(confirm('您确定要退出安装向导吗？')) window.close();"/>
			</form>
		</div>
    </div>
</div>
</body>
</html>
<script type="text/javascript" src="http://www.finecms.net/index.php?c=sys&a=version&id=<?php echo CMS_VERSION; ?>"></script>