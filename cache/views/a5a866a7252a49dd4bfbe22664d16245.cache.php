<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link href="<?php echo ADMIN_THEME; ?>images/reset.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/system.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/main.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/switchbox.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/dialog.js"></script>
</head>
<body>
<div class="subnav">
    <div class="content-menu ib-a blue line-x">
    </div>
</div>
<style type="text/css">
.sbs{ }
.sbul{ margin:10px;}
.sbul li{ line-height:30px;}
.button{ margin-top:20px;}
.subnav,.ifm{ display:none;}
html{ _overflow-y:scroll}
</style>
<div class="pad-10">
<form action="<?php echo url('admin/index/cache',array('show'=>1),1); ?>" target="cache_if" method="post" id="myform" name="myform">
<div class="col-2">
<h6><?php echo lang('a-ind-101'); ?>：</h6>
<div class="sbs" id="update_tips" style="height:400px; overflow:auto;">
	<ul id="file" class="sbul">
	</ul>
</div>
</div>
</form>
<iframe id="cache_if" name="cache_if" class="ifm"></iframe>
<iframe id="hidden" name="hidden"  width="0" height="0" frameborder=0></iframe>
</div>
<script type="text/javascript">
document.myform.submit();
function addtext(data) {
	$('#file').append(data);
	document.getElementById('update_tips').scrollTop = document.getElementById('update_tips').scrollHeight;
}
</script>
</body>
</html>