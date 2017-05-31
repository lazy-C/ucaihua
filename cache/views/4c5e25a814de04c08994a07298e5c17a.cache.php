<?php include $this->_include('header'); ?>
<script type="text/javascript" src="<?php echo SITE_THEME; ?>js/show.js"></script>
<body>
<header>
	<div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
	<h1><?php echo $catname; ?></h1>
</header>
<?php include $this->_include('banner'); ?>
<div class="current-category">您当前的位置：<?php echo $catname; ?></div>
<div class="detail-head-title"><h1 class="article-title x-centered"><?php echo $catname; ?></h1></div>
<div id="content">
    <div class="detail-panel">
    <?php echo $content; ?>
    </div>
</div>
<div id="deals-page" class="">
    <div id="nav-more"><span class="nav-button">返回栏目</span></div>
    <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
</div>
<?php include $this->_include('footer'); ?>