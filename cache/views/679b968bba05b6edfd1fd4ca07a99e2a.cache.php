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
        <ul>
            <li><span>租　金：</span> <?php echo $zujin; ?> 元/月(<?php echo $zujinleixing; ?>)</li>
            <li><span>户　型：</span> <?php echo $shi; ?>室<?php echo $ting; ?>厅<?php echo $wei; ?>卫<?php echo $mianji; ?>平方</li>
            <li><span>类　型：</span> <?php echo $zhuangxiu; ?>，第<?php echo $louceng; ?>层，共<?php echo $zongceng; ?>层 </li>
            <li><span>配　置：</span> <?php echo implode(',', $peizhi); ?></li>
            <li><span>区　域：</span> <?php echo linkagepos(1, $quyu, ''); ?></li>
            <li><span>小　区：</span> <?php echo $xiaoqu; ?></li>
            <li><span>地　址：</span> <?php echo $dizhi; ?></li>
            <li><span>电　话：</span> <?php echo $dianhua; ?></li>
        </ul>
    </div>
    <div id="deal">
    	<section class="deal-box">
            <h1 class="tag current">房屋简介</h1>
            <div class="tab-box">
            <?php echo $content; ?>
            </div>
        </section>
    	<section class="deal-box">
            <h1 class="tag current">地图信息</h1>
            <div class="tab-box" style="height:200px; overflow:hidden">
            <?php if (is_array($tupian['file'])) { $count=count($tupian['file']);foreach ($tupian['file'] as $k=>$t) {  echo baiduMap($modelid, 'ditu', $ditu, 300, 200);  } } ?>
            </div>
        </section>
        <section class="deal-box">
            <h1 class="tag current">房屋图片</h1>
            <div class="tab-box">
            <?php if (is_array($tupian['file'])) { $count=count($tupian['file']);foreach ($tupian['file'] as $k=>$t) { ?>
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