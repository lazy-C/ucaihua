<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'int',
    'modelid' => 'int',
    'title' => 'string',
    'thumb' => 'string',
    'keywords' => 'string',
    'description' => 'blob',
    'url' => 'string',
    'listorder' => 'int',
    'status' => 'int',
    'hits' => 'int',
    'sysadd' => 'int',
    'userid' => 'int',
    'username' => 'string',
    'inputtime' => 'int',
    'updatetime' => 'int',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'modelid',
    3 => 'title',
    4 => 'thumb',
    5 => 'keywords',
    6 => 'description',
    7 => 'url',
    8 => 'listorder',
    9 => 'status',
    10 => 'hits',
    11 => 'sysadd',
    12 => 'userid',
    13 => 'username',
    14 => 'inputtime',
    15 => 'updatetime',
  ),
  'primary_key' => 'id',
);