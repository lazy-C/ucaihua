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
<title>admin</title>
</head>
<body style="font-weight: normal;">
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<a href="<?php echo url('admin/user/'); ?>"><em><?php echo lang('a-use-5'); ?></em></a><span>|</span>
		<a href="<?php echo url('admin/user/add'); ?>" class="on"><em><?php echo lang('a-use-6'); ?></em></a>
	</div>
	<div class="bk10"></div>
	<div class="table-list">
		<form action="" method="post">
		<input name="userid" type="hidden" value="<?php echo $data['userid']; ?>">
		<table width="100%" class="table_form">
		<tr>
			<th width="200"><?php echo lang('a-user'); ?>： </th>
			<td><?php if ($data['username']) {  echo $data['username'];  } else { ?><input class="input-text" type="text" name="username" value="" size="30"/><?php } ?></td>
		</tr>
		<tr>
			<th><?php echo lang('a-pass'); ?>： </th>
			<td><input class="input-text" type="password" name="password" value="" size="30"/><div class="onShow"><?php echo lang('a-use-10'); ?></div></td>
		</tr>
		<tr>
			<th><?php echo lang('a-use-11'); ?>： </th>
			<td><input class="input-text" type="text" name="realname" value="<?php echo $data['realname']; ?>" size="30"/></td>
		</tr>
		<tr>
			<th>Email： </th>
			<td><input class="input-text" type="text" name="email" value="<?php echo $data['email']; ?>" size="30"/></td>
		</tr>
		<tr>
			<th><?php echo lang('a-use-7'); ?>： </th>
			<td><select name="roleid">
			<?php if (is_array($role)) { $count=count($role);foreach ($role as $t) { ?>
			<option value="<?php echo $t['roleid']; ?>" <?php if ($data['roleid']== $t['roleid']) { ?>selected<?php } ?>><?php echo $t['rolename']; ?></option>
			<?php } } ?>
			</select>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-sit-20'); ?>： </th>
			<td><select name="site">
			<option value=""> -- </option>
			<?php if (is_array($sites)) { $count=count($sites);foreach ($sites as $sid=>$t) { ?>
			<option value="<?php echo $sid; ?>" <?php if ($data['site']== $sid) { ?>selected<?php } ?>><?php echo $t['SITE_NAME']; ?></option>
			<?php } } ?>
			</select>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-use-12'); ?>： </th>
			<td>
			<table>
				<?php if (!empty($menu)) {  if (is_array($menu)) { $count=count($menu);foreach ($menu as $k=>$t) { ?>
				<tr>
					<td width="140"><?php echo lang('a-name'); ?>：<input class="input-text" type="text" name="menu[name][<?php echo $k; ?>]" value="<?php echo $t['name']; ?>" size="10"/></td>
					<td><?php echo lang('a-address'); ?>：<input class="input-text" type="text" name="menu[url][<?php echo $k; ?>]" value="<?php echo $t['url']; ?>" size="50"/></td>
					<td><a href="javascript:add_menu();"><?php echo lang('a-add'); ?></a></td>
				</tr>
				<?php } }  } else { ?>
				<tr>
					<td width="140"><?php echo lang('a-name'); ?>：<input class="input-text" type="text" name="menu[name][]" value="" size="10"/></td>
					<td><?php echo lang('a-address'); ?>：<input class="input-text" type="text" name="menu[url][]" value="" size="50"/></td>
					<td><a href="javascript:add_menu();"><?php echo lang('a-add'); ?></a></td>
				</tr>
				<?php } ?>
				<tbody id="menu_body">
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<th>&nbsp;</th>
			<td><input class="button" type="submit" name="submit" value="<?php echo lang('a-submit'); ?>" /></td>
		</tr>
		</table>
		</form>
	</div>
</div>
<script type="text/javascript">
function add_menu() {
    var data = '<tr><td width="140"><?php echo lang('a-name'); ?>：<input class="input-text" type="text" name="menu[name][]" value="" size="10"/></td><td><?php echo lang('a-address'); ?>：<input class="input-text" type="text" name="menu[url][]" size="50"/></td><td>&nbsp;</td></tr>';
	$('#menu_body').append(data);
}
</script>
</body>
</html>