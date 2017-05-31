<?php include $this->_include('header'); ?>
<body id="search">
<header class=" ">
    <div class="left-box"><a class="goback" href="<?php echo SITE_PATH; ?>"><label>首页</label></a></div>
    <h1>搜索</h1>
</header>
<div class="body">
    <section id="search-box">
    <form id="search-form" action="<?php echo url('content/search'); ?>" method="get">
    	<input name="c" type="hidden" value="content">
    	<input name="a" type="hidden" value="search">
        <input id="keyword" type="search" name="kw" value="" x-webkit-speech placeholder="请输入搜索关键词" />
        <input type="submit" value="搜索" />
    </form>
    </section>
    <?php if (empty($searchnums)) {  if ($kw) { ?><div class="isEmpty">抱歉，没有找到与"<?php echo $kw; ?>"相关的内容，请换一个关键词再试试吧</div><?php }  } else { ?>
    <h2>找到<strong><?php echo $kw; ?></strong>相关内容<strong><?php echo $searchnums; ?></strong>篇</h2>
    <div id="deals">
    <?php if (is_array($searchdata)) { $count=count($searchdata);foreach ($searchdata as $t) { ?>
        <section class="news">
        <a href="<?php echo $t['url']; ?>">
            <detail>
                <ul>
                    <li class="brand"><?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", $t['title']); ?></li>
                    <li class="title indent"><?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", strcut($t['description'],86)); ?></li>
                    <li class="price"><strong><?php echo date('Y-m-d H:i', $t['updatetime']); ?></strong><span>阅读<?php echo $t['hits']; ?></span></li>
                </ul>
            </detail>
        </a>
        </section>
    <?php } } ?>
    </div>
    <div id="deals-page" class="">
    <?php
    if (preg_match("/<a href=\"([^\"|^<]+)\">下一页<\/a>/Ui",$searchpage, $m)) {
    	$next_url = '<a href="' . $m[1] . '">下一页</a>';
    } else {
    	$next_url = "没有了";
    }
    ?>
        <div id="nav-more"><span class="nav-button"><?php echo $next_url; ?></span></div>
        <div id="nav-top"><span class="nav-button"><label onClick="javascript:scroll(0,0)">回到顶部</label></span></div>
    </div>
    <?php } ?>
</div>
<?php include $this->_include('footer'); ?>