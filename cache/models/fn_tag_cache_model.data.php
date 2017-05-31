<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'params' => 'string',
    'tag' => 'string',
    'addtime' => 'int',
    'sql' => 'blob',
    'total' => 'int',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'params',
    2 => 'tag',
    3 => 'addtime',
    4 => 'sql',
    5 => 'total',
  ),
  'primary_key' => 'id',
);