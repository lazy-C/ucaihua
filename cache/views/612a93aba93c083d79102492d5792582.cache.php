<?php include $this->_include('header'); ?>
<body id="search">
<header class=" ">
    <div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
    <h1>标签</h1>
</header>
<div class="body">
    <h2>标签 <strong><?php echo $kw; ?></strong></h2>
    <div id="deals">
    <?php if (is_array($taglist)) { $count=count($taglist);foreach ($taglist as $key=>$t) { ?>
        <section class="news">
        <a href="<?php echo url('content/show', array('id'=>$t['id'])); ?>">
            <detail>
                <ul>
                    <li class="brand"><?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", $t['title']); ?></li>
                    <li class="title indent">{<?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", strcut($t['description'],86)); ?></li>
                    <li class="price"><strong><?php echo date('Y-m-d H:i', $t['updatetime']); ?></strong><span>阅读<?php echo $t['hits']; ?></span></li>
                </ul>
            </detail>
        </a>
        </section>
    <?php } } ?>
    </div>
    <div id="deals-page" class="">
    <?php
    if (preg_match("/<a href=\"([^\"|^<]+)\">下一页<\/a>/Ui",$tagpage, $m)) {
    	$next_url = '<a href="' . $m[1] . '">下一页</a>';
    } else {
    	$next_url = "没有了";
    }
    ?>
        <div id="nav-more"><span class="nav-button"><?php echo $next_url; ?></span></div>
        <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
    </div>
</div>
<?php include $this->_include('footer'); ?>