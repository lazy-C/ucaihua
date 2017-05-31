<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'int',
    'content' => 'blob',
    'version' => 'string',
    'language' => 'string',
    'os' => 'blob',
    'developers' => 'string',
    'softsize' => 'string',
    'downdata' => 'blob',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'content',
    3 => 'version',
    4 => 'language',
    5 => 'os',
    6 => 'developers',
    7 => 'softsize',
    8 => 'downdata',
  ),
  'primary_key' => 'id',
);