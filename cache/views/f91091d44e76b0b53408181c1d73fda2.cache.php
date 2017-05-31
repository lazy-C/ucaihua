<?php include $this->_include('header'); ?>
<body id="index">
<script type="text/javascript">
$(document).ready(function(){
	$(".childs").click(function(){
		$(this).toggleClass("show-cate");
	});
});
</script>
<header>
	<div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
	<h1>栏目</h1>
 </header>
<article id="category">
<?php if (is_array($cats)) { $count=count($cats);foreach ($cats as $c) {  if ($c['parentid']==0) { ?>
    <section class="category-box <?php if ($c['child']) { ?>childs<?php } ?>">
		<div class="category-btn link">
        	<?php if ($c['child']) { ?>
            <h1><?php echo $c['catname']; ?><span class="count">(<?php echo $c['items']; ?>)</span></h1>
        	<label class="arrow"><span class="bg"></span></label>
            <?php } else { ?>
            <h1><a href="<?php echo url('content/list', array('catid'=>$c['catid'])); ?>"><?php echo $c['catname']; ?><span class="count">(<?php echo $c['items']; ?>)</span></a></h1>
        	<label><span class="bg"></span></label>
            <?php } ?>
    	</div>
        <?php if ($c['child']) { ?>
        <ul>
        <?php if (is_array($cats)) { $count=count($cats);foreach ($cats as $t) {  if ($t['parentid']==$c['catid']) { ?>
            <li><a href="<?php echo url('content/list', array('catid'=>$t['catid'])); ?>"><?php echo $t['catname']; ?>(<?php echo $t['items']; ?>)</a></li>
        <?php }  } } ?>
        </ul>
        <?php } ?>
	</section>
<?php }  } } ?>
</article>
<?php include $this->_include('footer'); ?>
