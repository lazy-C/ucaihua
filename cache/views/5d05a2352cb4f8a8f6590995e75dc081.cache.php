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
	<div class="content-menu ib-a blue line-x">
		<?php echo $join_info; ?><span>|</span>
		<a href="<?php echo url('admin/form/list',array('status'=>1,'modelid'=>$modelid,'cid'=>$cid)); ?>" <?php if ($status==1) { ?>class="on"<?php } ?>><em><?php echo lang('a-con-20'); ?>(<?php echo $count[1]; ?>)</em></a><span>|</span>
		<a href="<?php echo url('admin/form/list',array('status'=>0,'modelid'=>$modelid,'cid'=>$cid)); ?>" <?php if ($status==0) { ?>class="on"<?php } ?>><em><?php echo lang('a-con-21'); ?>(<?php echo $count[0]; ?>)</em></a><span>|</span>
		<a href="<?php echo url('admin/form/list',array('status'=>3,'modelid'=>$modelid,'cid'=>$cid)); ?>" <?php if ($status==3) { ?>class="on"<?php } ?>><em><?php echo lang('a-con-23'); ?>(<?php echo $count[3]; ?>)</em></a><span>|</span>
		<?php if (admin_auth($userinfo['roleid'], 'form-add')) { ?><a href="<?php echo url('admin/form/add',array('modelid'=>$modelid, 'cid'=>$cid)); ?>"><em><?php echo lang('a-con-24'); ?></em></a><span>|</span><?php }  if (admin_auth($userinfo['roleid'], 'form-config')) { ?><a href="<?php echo url('admin/form/config',array('modelid'=>$modelid, 'cid'=>$cid)); ?>"><em><?php echo lang('a-con-60'); ?></em></a><span>|</span><?php } ?>
		<a href="<?php echo $site_url;  echo url('form/post',array('modelid'=>$modelid, 'cid'=>$cid)); ?>" target="_blank"><em><?php echo lang('a-con-61'); ?></em></a><span>|</span>
		<a href="<?php echo $site_url;  echo url('form/list',array('modelid'=>$modelid, 'cid'=>$cid)); ?>" target="_blank"><em><?php echo lang('a-con-62'); ?></em></a>
	</div>
	<div class="bk10"></div>
	<div class="explain-col">
		<form action="" method="post">
		<input name="form" type="hidden" value="search" />
		userid：
		<input type="text" class="input-text" size="5" name="userid" />
		<?php echo lang('a-con-63'); ?>：
		<select id="stype" name="stype">
			<option value="0"> ---- </option>
			<?php if (is_array($model['fields']['data'])) { $count=count($model['fields']['data']);foreach ($model['fields']['data'] as $t) { ?>
			<option value="<?php echo $t['field']; ?>"><?php echo $t['name']; ?></option>
			<?php } } ?>
		</select>
		&nbsp;&nbsp;
		<input type="text" class="input-text" size="25" name="kw" />
		<input type="submit" class="button" value="<?php echo lang('a-search'); ?>" name="submit" />
		</form>
	</div>
	<div class="bk10"></div>
	<div class="table-list">
		<form action="" method="post" name="myform">
		<input name="form" id="list_form" type="hidden" value="order" />
		<table width="100%">
		<thead>
		<tr>
			<th style="width:20px;" align="left"><input name="deletec" id="deletec" type="checkbox" onClick="setC()" /></th>
			<th style="width:30px;" align="left"><?php echo lang('a-order'); ?></th>
			<th style="width:40px;" align="left">ID </th>
			<?php if (is_array($model['setting']['form']['show'])) { $count=count($model['setting']['form']['show']);foreach ($model['setting']['form']['show'] as $f) { ?>
			<th align="left"><?php echo $model['fields']['data'][$f]['name']; ?></th>
			<?php } }  if ($join) { ?><th style="width:80px;" align="left"><?php echo lang('a-con-64'); ?></th><?php } ?>
			<th style="width:90px;" align="left"><?php echo lang('a-con-30'); ?></th>
			<th style="width:120px;" align="left"><?php echo lang('a-con-31'); ?></th>
			<th style="width:130px;" align="left"><?php echo lang('a-option'); ?></th>
		</tr>
		</thead>
		<tbody>
		<?php if (is_array($list)) { $count=count($list);foreach ($list as $t) { ?>
		<tr>
			<td align="left"><input name="del_<?php echo $t['id']; ?>" type="checkbox" class="deletec" /></td>
			<td align="left"><input type="text" name="order_<?php echo $t['id']; ?>" class="input-text" style="width:25px; height:15px;" value="<?php echo $t['listorder']; ?>" /></td>
			<td align="left"><?php echo $t[id]; ?></td>
			<?php if (is_array($model['setting']['form']['show'])) { $count=count($model['setting']['form']['show']);foreach ($model['setting']['form']['show'] as $f) { ?>
			<td align="left"><?php echo $t[$f]; ?></td>
			<?php } }  if ($join) { ?><td align="left"><a href="<?php echo url('admin/form/list',array('userid'=>$t['userid'],'modelid'=>$modelid,'status'=>$status, 'cid'=>$t['cid'])); ?>"><?php echo $t['cid']; ?></a></td><?php } ?>
			<td align="left"><?php if ($t['username']) { ?><a href="<?php echo url('admin/form/list',array('userid'=>$t['userid'],'modelid'=>$modelid,'status'=>$status, 'cid'=>$cid)); ?>"><?php echo $t['username']; ?></a><?php } else {  echo $t['ip'];  } ?></td>
			<td align="left"><span style="<?php if (date('Y-m-d', $t['updatetime']) == date('Y-m-d')) { ?>color:#F00<?php } ?>"><?php echo date(TIME_FORMAT, $t['updatetime']); ?></span></td>
			<td align="left">
			<?php $del = url('admin/form/del/',array('modelid'=>$modelid,'id'=>$t['id'], 'cid'=>$cid));?>
			<a href="<?php echo $site_url;  echo form_show_url($modelid, $t); ?>" target="_blank"><?php echo lang('a-cat-23'); ?></a> | 
			<?php if (admin_auth($userinfo['roleid'], 'form-edit')) { ?><a href="<?php echo url('admin/form/edit',array('id'=>$t['id'],'modelid'=>$modelid, 'cid'=>$cid)); ?>"><?php echo lang('a-edit'); ?></a> | <?php }  if (admin_auth($userinfo['roleid'], 'form-del')) { ?><a href="javascript:;" onClick="if(confirm('<?php echo lang('a-confirm'); ?>')){ window.location.href='<?php echo $del; ?>'; }"><?php echo lang('a-del'); ?></a> <?php } ?>
			</td>
		</tr>
		<?php } } ?>
		<tr>
			<td colspan="11" align="left">
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-edit')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-order'); ?>" name="submit_order" onClick="$('#list_form').val('order')" />&nbsp;
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-del')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-del'); ?>" name="submit_del" onClick="$('#list_form').val('del');return confirm_del()" />&nbsp;
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-edit')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-con-36'); ?>" name="submit_status_1" onClick="$('#list_form').val('status_1')" />&nbsp;
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-edit')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-con-37'); ?>" name="submit_status_0" onClick="$('#list_form').val('status_0')" />&nbsp;
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-edit')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-con-39'); ?>" name="submit_status_3" onClick="$('#list_form').val('status_3')" />&nbsp;
			<?php if ($join) {  echo lang('a-con-65'); ?>：
			<input type="text" class="input-text" size="10" name="toid" />
			<input <?php if (!admin_auth($userinfo['roleid'], 'form-edit')) { ?>disabled<?php } ?> type="submit" class="button" value="<?php echo lang('a-con-66'); ?>" name="submit_join" onClick="$('#list_form').val('join')" />&nbsp;
			<?php } ?>
			</td>
		</tr>    
		</tbody>
		</table>
		<?php echo $pagelist; ?>
		</form>
	</div>
</div>
<script type="text/javascript">
$(function(){
    window.top.art.dialog({id:'clz'}).close();
});
function confirm_del() {
    if (confirm('<?php echo lang('a-confirm'); ?>')) { 
		return true; 
	} else {
	    return false;
	}
}
function setC() {
	if($("#deletec").attr('checked')) {
		$(".deletec").attr("checked",true);
	} else {
		$(".deletec").attr("checked",false);
	}
}
</script>
</body>
</html>