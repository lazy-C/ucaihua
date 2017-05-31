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
        	<div class="left">
                <?php foreach($FILES as $k=>$v) { ?>
                <li><span><?php echo $v['write'] ? '<div class="yes"></div>' : '<span style="color:red;">不可写</span>';?></span><?php echo $v['name'];?></li>
                <?php } ?>
                 <div class="About">
                 	<div class="ico_1"><a href="http://www.finecms.net" target="_blank" >官网</a></div>
                    <div class="ico_2"><a href="http://bbs.finecms.net" target="_blank" >论坛</a></div>
                 </div>
            </div>
            <div class="right">
				<span class="vck f12">&nbsp;</span>
            	<div class="m10 f12">
            	<?php
				if($pass) {
					echo '目录/文件属性通过了检测，请点下一步继续安装吧';
				} else {
					echo '<br/><span style="color:red;">目录/文件属性未通过检测，安装无法进行!</span> <br/><br/>';
					if($ISWIN) {
						echo '请设置不可写目录/文件(含子目录及文件)写入权限';
					} else {
						echo '请设置不可写目录/文件(含子目录及文件)属性为可写(0777)';
					}
				}
				?>
            </div>
            </div>
        </div>
		<div class="bnt">
			<form action="<?php echo url('install/'); ?>" method="post" id="dform">
			<input type="hidden" name="step" value="4"/>
			<input type="button" class="n" value="上一步" onclick="history.back(-1);"/>
			<input type="submit" class="n" value="下一步"<?php if(!$pass) echo ' disabled';?>/>
			<input type="button" value="取消" class="c" onclick="if(confirm('真的要取消吗？')) window.close();"/>
			</form>
		</div>
    </div>
</div>
</body>
</html>
