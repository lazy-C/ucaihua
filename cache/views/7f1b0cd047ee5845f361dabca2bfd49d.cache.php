<?php include $this->_include('header'); ?>
<!--通栏 开始-->
<div class="colo_bank">
	<div class="cbody" style="width:100%; height:152px;background:url(<?php echo SITE_THEME; ?>images/benna/b3.jpg) no-repeat center top;"></div>
</div>
<!--通栏 结束-->
	<link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/dialog.js"></script>
	<script type="text/javascript">var sitepath = "<?php echo SITE_PATH;  echo ENTRY_SCRIPT_NAME; ?>";</script>
    <script type="text/javascript" src="<?php echo LANG_PATH; ?>lang.js"></script>
	<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/core.js"></script>
    <div class="navigation">
    您当前位置：<a  href="<?php echo SITE_PATH; ?>">首页</a> >> 
	<?php if ($joindata && $joindata['typeid'] == 1) { ?><!--表示关联的内容模型-->
	  <?php echo catpos($cdata['catid'], ' &gt;&gt;&nbsp;&nbsp;'); ?> &gt;&gt;&nbsp;&nbsp;<a href="<?php echo $cdata['url']; ?>"><?php echo $cdata['title']; ?></a> &gt;&gt;&nbsp;&nbsp;
	<?php }  echo $form_name; ?> 
    </div>
    <div class="blank10 clear"></div>
    <!--begin-->

    <!--end-->
    <div class="clear"></div>
    <div class="mainpdbox">
            <!--list begin-->
		    <div class="fb_list">
                <h3>留言墙</h3> 	
			    <ul>
                <?php $page=$_GET['page'];  $return = $this->_listdata("table=$table page=$page cid=$cid pagesize=5 urlrule=index.php?c=form&a=post&modelid=6&cid=0&page=[page] order=updatetime"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <li><div class="fb_zuozhe"><b><a href="mailto:<?php echo $t['youjian']; ?>"><?php echo $t['xingming']; ?></a></b> 在<?php echo date("Y-m-d", $t['updatetime']); ?> 留言：</div>
                	<div class="clear"></div>
					<div class="fb_neirong"><?php echo $t['neirong']; ?></a></div>
                    <?php if ($t['guanliyuanhuifu']) { ?>
                	<div class="fb_glyhuifu">
                    	<div class="fb_red">管理员回复：</div>
                        <div class="clear"></div>
                    	<div class="fb_hfneirong"><?php echo $t['guanliyuanhuifu']; ?></div>
                    </div>
                    <?php } ?>
                </li>
                <?php } } ?>
                </ul>
                <div class="listpage" style="padding-left:10px;"><?php echo $pagelist; ?></div>
		   </div>
	       <!--list end-->
    </div>
    <div class="clear blank10"></div>
    
    <div class="fb_out">
        <div class="title" style="display:none;"><span><?php echo $form_name; ?></span></div>
        <div class="item-list">
        	
            <form action="" method="post">
			<table width="100%" class="table_form ">
			<tr>
				<th width="60"></th>
				<td></td>
			</tr>
			<tr id="fine_xingming"><th>姓名：</th><td><input type="text" value="" class="input-text" name="data[xingming]"  style='width:150px;'  /><span id="ck_xingming"></span>&nbsp;&nbsp;&nbsp;&nbsp;电话：&nbsp;<input type="text" value="" class="input-text" name="data[dianhua]"  style='width:150px;'  /><span id="ck_dianhua"></span>&nbsp;&nbsp;&nbsp;&nbsp;邮件：&nbsp;<input type="text" value="" class="input-text" name="data[youjian]"  style='width:150px;'  /><span id="ck_youjian"></span></td></tr><tr id="fine_neirong"><th>内容：</th><td><textarea style="width:580px;height:120px;" name="data[neirong]" ></textarea><span id="ck_neirong"></span></td></tr>
			<?php if ($code) { ?>
			<tr>
				<th>验证码：</th>
				<td><input name="code" type="text" class="input-text" size=10 /><img src="<?php echo url('api/captcha', array('width'=>80,'height'=>25)); ?>" align="absmiddle"></td>
			</tr>
			<?php } ?>
			<tr>
				<th style="border:none">&nbsp;</th>
				<td style="border:none"><input type="submit" class="button" value="提 交" name="submit"></td>
			</tr>
			</table>
			</form>
        
        
        
            
        </div>
    </div>
    
    <div class="clear blank10"></div>
    
<?php include $this->_include('footer'); ?>