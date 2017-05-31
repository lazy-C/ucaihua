<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title><?php echo CMS_NAME; ?>网站管理系统 V<?php echo CMS_VERSION; ?> 安装向导</title>
<link rel="stylesheet" type="text/css" href="<?php echo SITE_THEME; ?>../install/install.css" />
<script type="text/javascript">
function $(ID) {return document.getElementById(ID);}
</script>
</head>
<body>
<div class="width">
	<div class="m10">
    	<div class="logo"><span>读写检测</span><img src="<?php echo SITE_THEME; ?>../install/install.png" /></div>
        <div class="table">
			<div class="m10"><textarea id="msgbox"> </textarea></div>
        </div>
		<div class="bnt">
			<form action="<?php echo url('install/'); ?>" method="post" id="dform">
				<input type="hidden" name="step" value="6"/>
				<input type="hidden" name="url" value="<?php echo $url;?>"/>
				<input type="hidden" name="username" value="<?php echo $username;?>"/>
				<input type="hidden" name="password" value="<?php echo $password;?>"/>
				<input type="hidden" name="step" value="6"/>
				<input type="button" value="上一步" class="n" onclick="history.back(-1);" disabled/>
				<input type="submit" value="下一步" class="n"/>
				<input type="button" value="取消" class="c" onclick="if(confirm('您确定要退出安装向导吗？')) window.close();"/>
			</form>
		</div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
$('msgbox').value = '';
<?php
$time = 400;
foreach($msgs as $v) {
?>
setTimeout("$('msgbox').value += ' # <?php echo $v;?>\\n';", <?php echo $time;?>);
<?php
	$time += 200;
}
$time += 200;
?>
setTimeout("$('dform').submit();", <?php echo $time;?>);
</script>