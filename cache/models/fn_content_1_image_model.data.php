<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'int',
    'content' => 'blob',
    'images' => 'blob',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'content',
    3 => 'images',
  ),
  'primary_key' => 'id',
);