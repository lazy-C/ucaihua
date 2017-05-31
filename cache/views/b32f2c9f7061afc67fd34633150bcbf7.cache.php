<?php include $this->_include('header'); ?>
<body id="index">
<script type="text/javascript">
$(document).ready(function(){
	$("#nav-more").click(function(){
		var id = $("#list_id").val();
		$("#nav-more").html('<span class="nav-button">加载中...</span>');
		$.post("<?php echo url('api/mobiledata'); ?>&rand="+Math.random(), { tpl: "data_news", page:id, catid:<?php echo $catid; ?> }, function(data){ 
			$("#deals").append(data);
			$("#list_id").val(Number(id) + 1);
			$("#nav-more").html('<span class="nav-button">查看更多</span>');
		});
	});
});
</script>
<header class="index">
    <!--<h1 id="logo"><a href="<?php echo SITE_PATH; ?>"><?php echo $SITE_NAME; ?></a></h1>-->
    <style>
    header.index #top_ys li a:after{color:#fff;}
	header.index #top_ys li a{color:#fff;}
    </style>
    <div id="top_ys" style="line-height:58px; height:58px; overflow:hidden;">
    	<ul>
        <!--<a class="account" href="<?php echo url('member'); ?>" style="display:none;">会员中心</a>
        <a class="category" href="<?php echo url('api/category'); ?>">栏目</a>
        <a class="search" href="<?php echo url('content/search'); ?>">搜索</a>-->
        <li style="width:16%; float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('content/list', array('catid'=>21)); ?>">新闻</a></li>
        <li style="width:16%;float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('content/list', array('catid'=>1)); ?>">导购</a></li>
        <li style="width:16%;float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('content/list', array('catid'=>24)); ?>">人物</a></li>
        <li style="width:16%;float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('content/list', array('catid'=>22)); ?>">动态</a></li>
        <li style="width:16%;float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('content/list', array('catid'=>23)); ?>">我们</a></li>
        <li style="width:16%;float:left; text-align:center; list-style:none outside;"><a href="<?php echo url('api/category'); ?>">更多</a></li>
        </ul>
    </div>
</header>

<div class="current-category">您当前的位置：<?php echo $catname; ?></div>
<div id="deals">
    <input name="list_id" id="list_id" type="hidden" value="1">
    <?php include $this->_include('data_news'); ?>
</div>
<div id="deals-page" class="">
    <div id="nav-more"><span class="nav-button">查看更多</span></div>
    <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
</div>
<?php include $this->_include('footer'); ?>
