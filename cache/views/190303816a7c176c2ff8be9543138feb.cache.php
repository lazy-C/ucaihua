<?php include $this->_include('header'); ?>
<body id="index">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>js/show.js"></script>
<header>
	<div class="left-box"><a class="goback" href="javascript:history.back()"><label>返回</label></a></div>
	<h1><?php echo $cat['catname']; ?></h1>
</header>
<?php include $this->_include('banner'); ?>
<div class="current-category">您当前的位置：<?php echo $cat['catname']; ?> > 正文</div>
<div class="detail-head-title">
    <h1 class="article-title x-centered"><?php echo $title; ?></h1>
    <div class="x-centered post-time"><?php echo date('Y-m-d H:i:s', $updatetime); ?> (<script type="text/javascript" src="<?php echo url('api/hits',array('id'=>$id)); ?>"></script>)</div>
</div>
<div id="content" class="m_content">
    <div class="detail-panel" style="display:none;">
    <?php if ($thumb) { ?>
    <p style="text-align: center; text-indent: 0px;">
    <div style="text-align: center; position: relative; margin: 0px auto 20px;"><img src="<?php echo image($thumb); ?>" style="width:100%"></div>
    </p>
    <?php } ?>
    
    </div>
    <?php echo $content; ?>
    
    
</div>
<div id="deals-page" class="">
    <div id="nav-more"><span class="nav-button">返回列表</span></div>
    <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
</div>
<?php include $this->_include('footer'); ?>