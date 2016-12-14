<?php

$cfg_sharding = 
[
	'environment' => 'phalcon',
	'connections'  => [
		'dbMaster' => [
			'adapter' => 'mysql',		
			'host' => 'localhost',
			'port' => '3306',
			'user' => 'root',
			'password' => 'root',
			'database' => 'ewshard',
			'writable' => true,
			 'options' => array (
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARACTER SET utf8'
  )
		],
		'dbSlave' => [
			'adapter' => 'mysql',
			'host' => 'localhost',
			'port' => '3306',
			'user' => 'root',
			'password' => 'root',
			'database' => 'ewshard',
			'writable' => true,
			 'options' => array (
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
      PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARACTER SET utf8'
  )
		]
	],
	'masterConnection' => 'dbMaster',
	'defaultConnection' => 'dbMaster',
	'nsConvertation' => '\Sharding\Objects',
	'shardMapPrefix' => 'shard_mapper_',
	'shardIdSeparator' => '_',
	'shardModels' => [
		'Event' => [
			'namespace' => '\Frontend\Models',
			'criteria' => 'location_id',
			'primary' => 'id',
			'baseTable' => 'event',
			'shardType' => 'loadbalance',
			'shards' => [
				'dbMaster' => [
					'baseTablePrefix' => 'event_',
					'tablesMax' => 5
				]
			],
			'relations' => [
				'EventImage' => [
					'namespace' => '\Frontend\Models',
					'baseTable' => 'event_image',
					'baseTablePrefix' => 'event_image_',
					'relationType' => 'many',
					'relationName' => 'image',
				],
				'EventTag' => [
					'namespace' => '\Frontend\Models',
					'baseTable' => 'event_tag',
					'baseTablePrefix' => 'event_tag_',
					'relationType' => 'manyToMany',
					'relationName' => 'tag',
				],
				'EventCategory' => [
					'namespace' => '\Frontend\Models',
					'baseTable' => 'event_category',
					'baseTablePrefix' => 'event_category_',
					'relationType' => 'manyToMany',
					'relationName' => 'category',
				]
			],
			'files' => [
				'images' => [
					'dependencyField' => 'id',
					'path' => '/full/path/to/files'
				]
			]
		]
	] 
];

return $cfg_sharding;
