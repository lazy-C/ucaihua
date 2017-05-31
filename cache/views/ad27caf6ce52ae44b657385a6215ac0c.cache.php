<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<?php echo ADMIN_THEME; ?>images/reset.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/system.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/main.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/switchbox.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/dialog.js"></script>
<title>admin</title>
</head>
<body style="font-weight: normal;">
<div class="subnav">
	<form action="" method="post">
		<?php echo lang('a-con-26'); ?>：<input type="text" class="input-text" size="25" name="title">
		<select name='catid'>
		<option value='0'> --- </option>
		<?php echo $category; ?>
		</select>
		<input type="submit" class="button" value="<?php echo lang('a-search'); ?>" name="submit">
	</form>
	<div class="bk10"></div>
	<div class="table-list">
		<table width="100%">
		<thead>
		<tr>
			<th width="30" align="center"><?php echo lang('a-select'); ?></th>
			<th align="left"><?php echo lang('a-con-26'); ?></th>
			<th width="80" align="left"><?php echo lang('a-con-29'); ?></th>
			<th width="130" align="left"><?php echo lang('a-con-31'); ?></th>
		</tr>
		</thead>
		<tbody>
		<input name="select" id="select" type="hidden" value=",">
		<?php if (is_array($list)) { $count=count($list);foreach ($list as $t) { ?>
		<input name="title_<?php echo $t['id']; ?>" id="title_<?php echo $t['id']; ?>" type="hidden" value="<?php echo $t['title']; ?>">
		<tr height="25">
			<td align="center"><input name="select_" id="select_<?php echo $t['id']; ?>" type="checkbox" value="<?php echo $t['id']; ?>" onClick="setv(this)"></td>
			<td align="left"><div style="overflow:hidden; height:22px; width:290px;"><?php echo $t['title']; ?></div></td>
			<td align="left"><?php echo $cats[$t['catid']]['catname']; ?></td>
			<td align="left"><?php echo date(TIME_FORMAT, $t['updatetime']); ?></td>
		</tr>
		<?php } } ?>    
		</tbody>
		</table>
	</div>
</div>
<script type="text/javascript">
function setv(obj) {
	var id  = $(obj).val();
	var ids = $("#select").val();
	var now = id + ',';
	if ($(obj).attr("checked")) {
		ids += now;
	} else {
		ids = ids.replace(","+now, ",");
	}
	$("#select").val(ids);
}
</script>
</body>
</html>