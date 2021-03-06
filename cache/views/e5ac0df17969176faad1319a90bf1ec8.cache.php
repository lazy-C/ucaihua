<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" >
<title><?php echo $meta_title; ?></title>
<link href="<?php echo SITE_THEME; ?>images/search.css" rel="stylesheet" />
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
<script type="text/javascript">var sitepath = "<?php echo SITE_PATH;  echo ENTRY_SCRIPT_NAME; ?>";</script>
<script type="text/javascript" src="<?php echo SITE_THEME; ?>js/jquery.autocomplete.js"></script>
<script type="text/javascript">
$(function(){
	$("#query").focus();
	$("input[name='q']").unautocomplete();
    $("input[name='q']").autocomplete("<?php echo url('api/search', array('modelid'=>$param['modelid'])); ?>",{
		minChars: 1,
		width: 519,
		matchContains: true,
		autoFill: false,
		resultsClass :'sg-wrap' ,
		matchCase:false,
		selectFirst: false,
		formatItem:function(row,i,max){
			return row[0];
		}
	}).result(function(event, data, formatted){
		formatted=formatted.replace(/<[\s\S]*?>/ig, "");
		$("input[name='q']").val(formatted);
	});
});
function search_post() {
   var kw=$('#query').val();
   if (kw) {
       var modelid=$('#modelid').val();
	   //组合搜索条件
	   var url=sitepath+'?c=content&a=search&kw='+kw;
	   if (modelid) url+='&modelid='+modelid;
	   window.location.href=url;
	   return false;
   } else {
      return false;
   }
}
</script>
</head>
<body>
<div id="doc">
    <div class="c-topbar $extraTopClass">
        <div id="nav" class="c-snav">
		     &nbsp;
            <a href="<?php echo SITE_PATH; ?>">首页</a>
            <?php if (is_array($cats)) { $count=count($cats);foreach ($cats as $t) {  if ($t['parentid']==0 && $t['ismenu']) { ?>
            <a href="<?php echo $t['url']; ?>"><?php echo $t['catname']; ?></a> &nbsp;
            <?php }  } } ?>
        </div>
        <div class="c-sust"><script type="text/javascript" src="<?php echo url('api/user'); ?>"></script></div>
    </div>
    <div class="c-header ">
        <div class="c-logo"><a href="<?php echo SITE_PATH; ?>"><img src="<?php echo SITE_THEME; ?>images/logo.png" width="147" height="37"></a></div>
        <form method="get" action="" class="c-fm-w" onSubmit="return search_post()">
        <span class="s-inpt-w" >
        <input type="text" class="s-inpt" autocomplete="off" name="q" id="query" value="" />
        </span><span class="s-btn-w">
        <input type="submit" class="s-btn" value="搜 索"  onClick="return search_post()" />
        <input type="hidden" name="modelid" id="modelid" value="<?php echo $param['modelid']; ?>"/>
        </span>
        </form>
        <div class="c-sarchform-ext">
        <?php $return = $this->_listdata("action=keywords order=addtime num=10 cache=36000"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
			<a href="<?php echo url('content/search', array('kw'=>urlencode($t['title']))); ?>"><?php echo $t['title']; ?></a>
		<?php } } ?>
        </div>
    </div>
    <div id="ctn">
        <div class="clear">
            <div id="res">
                <div id="resc">
                <?php if (empty($searchnums)) { ?>
                    <div class="result-error">
                    <h3 class="result-error-tips">抱歉，没有找到“<?php echo $kw; ?>”相关的内容。</h3>
                    <h4>建议：</h4>
                    <ul>
                    <li>请用空格分隔多个关键词</li>
                    <li>请查看输入的文字是否有误</li>
                    </ul>
                    </div>
                <?php } else { ?>
                    <ol id="results">
                    <?php if (is_array($searchdata)) { $count=count($searchdata);foreach ($searchdata as $t) { ?>
                        <li>
                        <div class="rnw wiki">   
                            <div class="tl"><h3><a href="<?php echo $t['url']; ?>" target="_blank"><?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", $t['title']); ?></a></h3></div>
                            <div id="summary1">
                                <p><?php echo str_replace($kw, "<font color='#FF0000'><b>".$kw."</b></font>", $t['description']); ?></p>
                                <div class="result-footer">
                                    <cite><?php echo date('Y-m-d', $t['updatetime']); ?></cite> - <a class="snapshot" href="<?php echo $cats[$t['catid']]['url']; ?>" target="_blank">[<?php echo $cats[$t['catid']]['catname']; ?>]</a>
                                </div>
                            </div>
                        </div>
                        </li>
                    <?php } } ?>
                    </ol>
                <?php } ?>
                </div>
            </div>
            <div class="c-leftnav">
                <div id="rstype" class="c-lnv">
                <ul>
                <li>
                <?php 
				$_param=$param;
				unset($_param['modelid']);
				if (isset($_param['id']) && $_param['id']) {
				    unset($_param['id'], $param['id']);
					$_param['kw']=$param['kw']=$kw;
				}
				unset($_param['page'], $param['page']);
				?>
                <a href="<?php echo url('content/search', array('kw'=>urldecode($kw))); ?>" <?php if (empty($modelid)) { ?> style="font-weight:bold"<?php } ?>>全部</a></li>
                <?php if (is_array($model)) { $count=count($model);foreach ($model as $t) { ?>
                <li><a href="<?php echo url('content/search', array('kw'=>urldecode($kw), 'modelid'=>$t['modelid'])); ?>" <?php if ($modelid==$t['modelid']) { ?> style="font-weight:bold"<?php } ?>><?php echo $t['modelname']; ?></a></li>
                <?php } } ?>
                </ul>
                </div>
            </div>
            <div id="ext">
                这里可以加入一段广告
            </div>
        </div>
    </div>
    <div class="c-bsearch">
        <?php echo $searchpage; ?>
    </div>
    <div id="c_footer">
    Powered by <?php echo CMS_NAME; ?> v<?php echo CMS_VERSION; ?> © 2012,Processed in <?php echo runtime(); ?> second(s).
    </div>
</div>
</body>
</html>
