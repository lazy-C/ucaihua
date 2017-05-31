<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'modelid' => 'int',
    'catid' => 'int',
    'params' => 'string',
    'keywords' => 'string',
    'addtime' => 'int',
    'sql' => 'blob',
    'total' => 'int',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'modelid',
    2 => 'catid',
    3 => 'params',
    4 => 'keywords',
    5 => 'addtime',
    6 => 'sql',
    7 => 'total',
  ),
  'primary_key' => 'id',
);