<?php include $this->_include('header'); ?>
    <div class="navigation">
    您当前位置：<a  href="<?php echo SITE_PATH; ?>">首页</a> >> <?php echo catpos($catid, ' &gt;&gt;&nbsp;&nbsp;'); ?><!--栏目面包屑导航，参考函数教程-->
    </div>
    <div class="blank10 clear"></div>
    <!--下载主体begin-->
    <div class="downlist">
       <div class="left">
            <div class="left01">
                <div class="title"><?php echo $catname; ?></div>
                <div class="leftbox">
                    <?php $return = $this->_listdata("catid=$catid page=$page order=updatetime more=1"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                        <div class="software">
                           <span class="image"><a href="<?php echo $t['url']; ?>"><img src="<?php echo thumb($t['thumb']); ?>" /></a></span>
                           <h4 class="name"><a href="<?php echo $t['url']; ?>" class="url"><?php echo $t['title']; ?></a> <span class="date">日期：<?php echo date("Y-m-d", $t['updatetime']); ?></span></h4>
                           <p class="info"><em><?php echo $t['language']; ?></em> |  <?php $os=string2array($t['os']);echo implode(',',$os) ?> | 大小:<?php echo $t['softsize']; ?> | 人气:<?php echo $t['hits']; ?></p>
                           <p class="dec"><?php echo $t['description']; ?></p>
                        </div>
                    <?php } } ?>
                    <div class="listpage"><?php echo $pagelist; ?></div>
                </div>
            </div>
       </div>
       <div class="right">
            <!--right02 begin-->
            <div class="right01">
                <div class="title"><span>最新TOP10</span></div>
                <div class="right01box">
                <ul>
                <?php $return = $this->_listdata("catid=$catid num=10 order=updatetime cache=36000"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <li><span class="N<?php echo $key+1; ?>"></span><a href="<?php echo $t['url']; ?>"><?php echo $t['title']; ?></a></li>
                <?php } } ?>
                </ul>
                </div>
            </div> 
            <!--right02 end-->
            <div class="blank10 clear"></div>
            <!--right02 begin-->
            <div class="right01">
               <div class="title"><span>热点TOP10</span></div>
               <div class="right01box">
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
    <!--下载主体end-->
    <div class="clear blank10"></div>
<?php include $this->_include('footer'); ?>