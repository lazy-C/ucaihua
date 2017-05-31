<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo CMS_NAME; ?>网站管理系统 V<?php echo CMS_VERSION; ?> 安装向导</title>
<link href="<?php echo SITE_THEME; ?>../install/install.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="width">
	<div class="m10">
    	<div class="logo"><span>使用协议</span><img src="<?php echo SITE_THEME; ?>../install/install.png" /></div>
        <div class="table">
			<div class="nr">
				<div class="nr-n">
					<p>一、FineCMS 官方对本使用协议拥有最终解释权</p>
					<br />
					<p>二、协议许可的权利</p>
					<p>1、FineCMS永久免费开源，可以对其进行二次开发，在保留后台版本信息情况下允许商业应用。</p>
					<p>2、您可以在协议规定的约束和限制范围内修改FineCMS源代码或界面风格以适应您的网站要求。</p>
					<p>3、您拥有使用本软件构建的网站中全部会员资料及相关信息的所有权，并独立承担其内容的相关法律义务。</p>
					 <br />
					<p>三、协议规定的约束和限制</p>
					<p>1、未经官方许可，不得在FineCMS基础上以发展任何派生版本或第三方版本用于重新分发。</p> 
					<p>2、未经官方许可，不得修改FineCMS后台模板中的版本内容和官方信息以及版本信息文件。</p>
					<p>3、如果您未能遵守本协议的条款，所被许可的权利将被收回，并承担相应法律责任。</p>
					 <br />
					<p>四、有限担保和免责声明</p>
					<p>1、本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。</p>
					<p>2、用户出于自愿而使用本软件，您必须了解使用本软件的风险，我们不承担任何因使用本软件而产生问题的相关责任。</p>
					<p>2、我们不对使用本软件构建的网站中的文章或信息承担责任。</p>
					<br />
					<p>协议发布时间： 2012年5月1日</p>
					<br />
				</div>
			</div>
        </div>
		<div class="bnt">
			<form action="<?php echo url('install/'); ?>" method="post" id="dform">
			<input type="hidden" name="step" value="2"/>
			<input type="submit" class="n" value="同意协议"/>
			</form>
		</div>
    </div>
</div>
</body>
</html>
