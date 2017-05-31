<?php include $this->_include('header'); ?>
<body id="index">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>js/show.js"></script>
<header>
	<div class="left-box"><a class="goback" href="javascript:history.back()"><label>返回</label></a></div>
	<h1><?php echo $cat['catname']; ?></h1>
</header>
<?php include $this->_include('banner'); ?>
<div class="current-category">您当前的位置：<?php echo $cat['catname']; ?> > 正文</div>
<div id="content">
    <div class="detail-head-title">
        <h1 class="article-title x-centered"><?php echo $title; ?></h1>
        <div class="x-centered post-time"><?php echo date('Y-m-d H:i:s', $updatetime); ?> (<script type="text/javascript" src="<?php echo url('api/hits',array('id'=>$id)); ?>"></script>)</div>
    </div>
    <div class="detail-panel">
    <?php echo $content; ?>
    </div>
    <div id="deal">
        <section class="deal-box">
            <h1 class="tag current">图片浏览</h1>
            <div class="tab-box">
            <?php if (is_array($images['file'])) { $count=count($images['file']);foreach ($images['file'] as $k=>$t) { ?>
            <li><img src="<?php echo image($t); ?>" border="0"/></li>
            <?php } } ?>
            </div>
        </section>
    </div>
    <div id="deals-page" class="">
        <div id="nav-more"><span class="nav-button">返回列表</span></div>
        <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
    </div>
</div>
<?php include $this->_include('footer'); ?>