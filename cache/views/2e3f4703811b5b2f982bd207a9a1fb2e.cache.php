<?php include $this->_include('header'); ?>
<body>
<header>
	<div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
	<h1>会员登录</h1>
</header>
<div id="login" class="body account">
    <form id="login-form" method="post" action="">
	<input type="hidden" value="<?php echo $backurl; ?>" name="data[back]">
        <p><input id="username" class="common-text" type="text" placeholder="请输入您的账号" name="data[username]" value="" /></p>
        <p><input id="password" class="common-text" type="password" placeholder="请输入您的密码" name="data[password]" /></p>
        <?php if ($memberconfig['logincode']) { ?>
        <p class="common-captcha" id="captcha">
            <input placeholder="请输入验证码" type="text" class="common-text" name="code" autocomplete="off" >
            <img src="<?php echo url("api/captcha/", array("width"=>120, "height"=>40)); ?>" onclick="this.src='<?php echo url("api/captcha/", array("width"=>120, "height"=>40)); ?>&'+Math.random();" >
        </p>
        <?php } ?>
        <p class="c-submit "><input type="submit" name="submit" value="登录" /></p>
        <p class="sub-action"><a href="<?php echo url('member/register'); ?>">免费注册</a></p>
    </form>
</div>
<?php include $this->_include('footer'); ?>