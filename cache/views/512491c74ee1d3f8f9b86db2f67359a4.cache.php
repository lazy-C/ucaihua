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
    <!--图片主体begin-->
    <div class="piclist">
        <!--<div class="title"><span><?php echo $catname; ?></span></div>-->
        <div class="piclistbox">
            <ul>
            <?php $return = $this->_listdata("catid=$catid page=$page order=updatetime"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <li>
            <div><a href="<?php echo $t['url']; ?>"><img src="<?php echo thumb($t['thumb']); ?>" /></a></div>
            <div class="picname"><a href="<?php echo $t['url']; ?>"><?php echo $t['title']; ?></a></div>
            </li>
            <?php } } ?>
            </ul>
            <div class="listpage"><?php echo $pagelist; ?></div>
       </div>
    </div>
    <!--图片主体end-->
    <div class="clear blank10"></div>
<?php include $this->_include('footer'); ?>