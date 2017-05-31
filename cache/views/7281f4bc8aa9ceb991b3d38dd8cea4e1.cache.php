<?php include $this->_include('header'); ?>
<!--通栏 开始-->
<div class="colo_bank">
	<div class="cbody" style="width:100%; height:152px;background:url(<?php echo SITE_THEME; ?>images/benna/b3.jpg) no-repeat center top;"></div>
</div>
<!--通栏 结束-->

    <div class="navigation">
    您当前位置：<a  href="<?php echo SITE_PATH; ?>">首页</a> >> <?php echo $form_name; ?>
    </div>
    <div class="blank10 clear"></div>
    <div class="mainpdbox">
        <div class="left">
            <!--articlecontent begin-->
			<div style="font-size:14px; line-height:24px;">
			    <h3 style="display:none;">表单内容信息</h3>

				<div class="newscontent">
				    <div id="MyContent" class="fb_liuyan">
						<div class="sf_left"><b><?php echo $xingming; ?></b> 在<br/><?php echo date("Y-m-d", $updatetime); ?><br />留言：</div>
                    	<div class="sf_right"><?php echo $neirong; ?></div>
                        <div class="clear"></div>
					</div>
					<div class="clear blank10"></div>
					<div class="fb_huifu">
                    	<div class="sf_left">管理员回复：</div>
                    	<div class="sf_right"><?php echo $guanliyuanhuifu; ?></div>
                        <div class="clear"></div>
                    </div>
                    
					<div class="clear blank10"></div>
                 </div>
			</div>
			<!--articlecontent end-->
        </div>
        <div class="right">
            <!--right02 begin-->
            <div class="cate_list_out">
		        <div class="title"><span class="fbliuyan"><a href="index.php?c=form&a=post&modelid=6&cid=0">发表留言</a></span></div>
	
		    </div> 
	        
	        <!--right02 end-->
	        <!--right02 end-->
       </div>
    </div>
    <div class="clear blank10"></div>
<?php include $this->_include('footer'); ?>