<?php include $this->_include('header'); ?>
<body id="index">
<header>
	<div class="left-box"><a class="goback" href="javascript:history.go(-1);"><label>返回</label></a></div>
	<h1>提示信息</h1>
</header>
<div class="current-category">您当前的位置：提示信息</div>
<div class="detail-head-title">
    <h1 class="article-title x-centered"><?php echo $msg; ?></h1>
    <?php if ($url) { ?>
    <div class="x-centered post-time">
         <a href="<?php echo $url; ?>">如果您的浏览器没有自动跳转，请点击这里</a>
         <meta http-equiv="refresh" content="<?php echo $time; ?>; url=<?php echo $url; ?>">
    </div>
    <?php } ?>
</div>
<?php if ($i) { ?>
<div id="deals-page" class="">
    <div id="nav-more"><span class="nav-button"><a href="javascript:history.go(-1);">后退一页</a></span></div>
    <div id="nav-top"><span class="nav-button"><label><a href="<?php echo SITE_PATH; ?>">前往首页</a></label></span></div>
</div>
<?php }  include $this->_include('footer'); ?>