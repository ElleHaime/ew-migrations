<?php

$cfg_database_slave = array(
  'adapter' => 'Mysql',
  'host' => 'localhost',
  'username' => 'root',
  'password' => 'root',
  'dbname' => 'ewshard',
  'charset' =>'utf8',
  'port' => 3306,
'options' => array(
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARACTER SET utf8'
  )
);

$cfg_database_master = array(
  'adapter' => 'Mysql',
  'host' => 'localhost',
  'username' => 'root',
  'password' => 'root',
  'dbname' => 'ewshard',
  'charset' =>'utf8',
  'port' => 3306,
  'options' => array (
		PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
		PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARACTER SET utf8'
  )
);

