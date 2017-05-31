<?php include $this->_include('header'); ?>
<!--通栏 开始-->
<div class="colo_bank">
	<div class="cbody" style="width:100%; height:152px;background:url(<?php echo SITE_THEME; ?>images/benna/b3.jpg) no-repeat center top;"></div>
</div>
<!--通栏 结束-->


<div class="navigation">
    您当前位置：<a  href="<?php echo SITE_PATH; ?>">首页</a> >> <?php echo catpos($catid, ' &gt;&gt;&nbsp;&nbsp;'); ?><!--栏目面包屑导航，参考函数教程-->
    </div>















    
    <div class="blank10 clear"></div>
    <div class="mainpdbox">
        <div class="left">
            <!--list begin-->
		    <div class="newslist">
                <h3 style="display:none;"><?php echo $catname; ?></h3> 	
			    <ul class="noborder">
                <?php $return = $this->_listdata("catid=$catid page=$page order=updatetime"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <li>
                	<div class="list_imglist"><a href="<?php echo $t['url']; ?>"><img src="<?php echo thumb($t['thumb'], 120, 90); ?>" width="120" height="90"></a></div>
                	<div class="list_txtlist"><!--<span class="date"><?php echo date("Y-m-d", $t['updatetime']); ?></span>--> <h2><a href="<?php echo $t['url']; ?>"><?php echo $t['title']; ?></a></h2><p><?php echo strcut($t['description'],300); ?><a href="<?php echo $t['url']; ?>">阅读全文>></a></p>
                	</div>
                </li>

                <?php } } ?>
                </ul>
                <div class="listpage" style="padding-left:10px;"><?php echo $pagelist; ?></div>
		   </div>
	       <!--list end-->
        </div>
        <div class="right">
            <!--right02 begin-->
	        <div class="cate_list_out">
		        <div class="title"><span>分类导航</span></div>
		        <div class="right02box">
		        <ul class="cate_list">
                <?php $Pcat = getParentData($catid);  if (is_array($cats)) { $count=count($cats);foreach ($cats as $c) {  if ($c['parentid']==$Pcat['catid']) { ?><li><a href="<?php echo $c['url']; ?>" title="<?php echo $c['catname']; ?>" <?php if ($c['catid']==$catid) { ?> class="b"<?php } else { ?> class="cate_<?php echo $c['catid']; ?>"<?php } ?>><?php echo $c['catname']; ?></a></li><?php }  } } ?>
			    </ul>
		        </div>
		    </div> 
	        <!--right02 end-->
		    <div class="blank10 clear"></div>
	        <!--right02 begin-->
	        <div class="right02" style="display:none;">
		       <div class="title"><span>热点TOP10</span></div>
		       <div class="right02box">
		        <ul>
                <?php $return = $this->_listdata("catid=$catid num=10 order=hits cache=36000"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
			    <li><span class="N<?php echo $key+1; ?>"></span><a href="<?php echo $t['url']; ?>"><?php echo $t['title']; ?></a></li>
                <?php } } ?>
			    </ul>
		       </div>
		    </div> 
	        <!--right02 end-->
       </div>
    </div>
    <div class="clear blank10"></div>
<?php include $this->_include('footer'); ?>