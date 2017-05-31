<?php include $this->_include('header'); ?>
<body id="index">
<script type="text/javascript">
$(document).ready(function(){
	$(".childs").click(function(){
		var c = $(this).attr("c");
		if (c == 0) {
			$(this).addClass("show-cate");
			$(this).attr("c","1");
		} else {
			$(this).removeClass("show-cate");
			$(this).attr("c","0");
		}
	});
});
</script>
<header>
	<div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
	<h1><?php echo $catname; ?></h1>
 </header>
<article id="category">
<?php if (is_array($cats)) { $count=count($cats);foreach ($cats as $c) {  if ($c['parentid']==$catid) { ?>
    <section class="category-box">
		<div class="category-btn link">
            <h1><a href="<?php echo url('content/list', array('catid'=>$c['catid'])); ?>"><?php echo $c['catname']; ?><span class="count">(<?php echo $c['items']; ?>)</span></a></h1>
        	<label><span class="bg"></span></label>
    	</div>
	</section>
<?php }  } } ?>
</article>
<?php include $this->_include('footer'); ?>
