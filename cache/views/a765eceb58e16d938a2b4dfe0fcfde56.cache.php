<footer <?php if ($s=='member') { ?>style="margin-top:10px;"<?php } ?>>

    <nav>
    	<ul>
            <li><a href="<?php echo SITE_PATH; ?>">首页</a></li>
            <li><a href="<?php echo url('api/category'); ?>">栏目</a></li>
            <li><a href="<?php echo url('content/search'); ?>">搜索</a></li>
    	</ul>
	</nav>
	<div class="copyright"><span class="copyright"><?php echo $SITE_NAME; ?>触屏版</span><p></p></div>
</footer>
<!--<div class="x-sheet" id="fc_load">
	<div class="x-sheet-box"><img src="<?php echo SITE_THEME; ?>images/load.gif" class="x-img-loading"><span class="x-sheet-text">数据加载中...</span></div>
</div>-->
</body>
</html>