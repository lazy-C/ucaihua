<?php include $this->_include('header'); ?>
<!--通栏 开始-->
<div class="colo_bank">
	<div class="cbody" style="width:100%; height:152px;background:url(<?php echo SITE_THEME; ?>images/benna/b3.jpg) no-repeat center top;"></div>
</div>
<!--通栏 结束-->
























    <div class="navigation">
    您当前位置：<a  href="<?php echo SITE_PATH; ?>">首页</a> >> <?php echo catpos($catid, ' &gt;&gt;&nbsp;&nbsp;'); ?>
    </div>
    <div class="blank10 clear"></div>
    <div class="mainpdbox">
		<?php echo $content; ?>
	
    </div>
    <div class="clear blank10"></div>
<?php include $this->_include('footer'); ?>