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
        <div class="left">
            <!--articlecontent begin-->
			<div class="articlecontent">
			    <h3><?php echo $title; ?></h3>
				<div class="info" style=" color: #999">
                    时间：<?php echo date("Y-m-d H:i:s", $updatetime); ?>
                    <span>点击：<script type="text/javascript" src="<?php echo url('api/hits',array('id'=>$id, 'hits'=>$hits)); ?>"></script>次</span>
                    <span><script type="text/javascript" language="javascript">function ContentSize(size){ document.getElementById('MyContent').style.fontSize=size+'px';}</script>【字体：<a href="javascript:ContentSize(16)">大</a> <a href="javascript:ContentSize(14)">中</a> <a href="javascript:ContentSize(12)">小</a>】</span>
					<span id="scj"><a href="javascript:addfavorite('<?php echo $id; ?>', 'scj');">收藏</a></span>
				</div>
                <div class="clear"></div>
				<div class="newscontent">
				    <div id="MyContent"><div id='news1' style='display:;'><?php echo $content; ?></div></div>	
					<div class="clear blank10"></div>
					<!--文章内容分页 begin-->
                    <?php if ($contentpage) { ?>
                    <div class="cpage">
                    <?php if (is_array($contentpage)) { $count=count($contentpage);foreach ($contentpage as $i=>$u) { ?>
                    <a<?php if ($page!=$i) { ?> href="<?php echo $u; ?>"<?php } ?>><?php echo $i; ?></a>
                    <?php } } ?>
                    </div>
                    <div class="clear blank10"></div>
                    <?php } ?>
					<!--文章内容分页 end-->
					<!--标签关键字 begin-->
                    <?php if ($kws=get_tag_data($keywords)) { ?>
						<div class="articlekey"><strong>TAG：</strong>
						<?php if (is_array($kws)) { $count=count($kws);foreach ($kws as $t) { ?>
						<a href="<?php echo tag_url($t); ?>"><?php echo $t; ?></a>
						<?php } } ?>
						</div>
                    <?php } ?>
					<!--标签关键字 end-->
                    <div class="clear"></div>
					<div class="articlebook">
                    <?php if ($prev_page) { ?><h2><strong>上一篇：</strong><a href="<?php echo $prev_page['url']; ?>"><?php echo $prev_page['title']; ?></a> </h2><?php }  if ($next_page) { ?><h2><strong>下一篇：</strong><a href="<?php echo $next_page['url']; ?>"><?php echo $next_page['title']; ?></a> </h2><?php } ?>
					</div>
                    <?php if (plugin('digg')) { ?><div class="clear blank10"></div><script type="text/javascript" src="<?php echo url('digg/index/show', array('id'=>$id)); ?>"></script><?php }  if (plugin('mood')) { ?><div class="clear blank10"></div><script type="text/javascript" src="<?php echo url('mood/index/show', array('id'=>$id)); ?>"></script><?php }  if (plugin('comment')) { ?><div class="clear blank10"></div><div style="clear:both;width:600px;padding-left:20px;"><a name="comment"></a><script type="text/javascript" src="<?php echo url('comment/index/list', array('id'=>$id)); ?>"></script></div><?php } ?>
					<div class="clear blank10"></div>
					<div class="xgxw">
						
                    </div>
					<div class="clear blank10"></div>
					<div class="sharebox">
                        <!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
<a class="bds_sqq"></a>
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<a class="bds_douban"></a>
<a class="bds_tqf"></a>
<a class="bds_qq"></a>
<a class="bds_bdhome"></a>
<span class="bds_more"></span>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6468913" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END -->
                    </div>
					<div class="clear blank10"></div>
                 </div>
			</div>
			<!--articlecontent end-->
        </div>
        <div class="right">
            <!--right02 begin-->
	        <div class="cate_list_out">
		        <div class="title"><span>分类导航</span></div>
		        <div class="cate_list">
		        <ul>
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