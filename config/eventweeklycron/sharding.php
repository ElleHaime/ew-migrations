<?php

return new \Phalcon\Config([
    'shardingConfig' =>
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
			'writable' => true
		]
	    //prod
//             'dbMaster' => [
//                 'adapter' => 'mysql',
//                 'host' => '172.31.33.64',
//                 'port' => '3306',
//                 'user' => 'eventtempcron',
//                 'password' => 'brUZacra7ruCtempcron',
//                 'database' => 'eventweekly_temp',
//                 'writable' => true
//             ],
	    //ts1
	    /*'dbMaster' => [
		'adapter' => 'mysql',
		'host' => '172.31.0.33',
		'port' => '3306',
		'user' => 'event_cron',
		'password' => 'event_cron_brUZacra7ruC',
		'database' => 'eventweekly_ts1',
		'writable' => true
	    ]*/
        ],
        'masterConnection' => 'dbMaster',
        'defaultConnection' => 'dbMaster',
        'shardMapPrefix' => 'shard_mapper_',
	'nsConvertation' => '\Sharding\Objects',
        'shardIdSeparator' => '_',
        'shardModels' => [
            'Event' => [
                'namespace' => '\Event\Model',
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
                        'namespace' => '\Event\Model',
                        'baseTable' => 'event_image',
                        'baseTablePrefix' => 'event_image_',
                        'relationType' => 'many',
                        'relationName' => 'image',
                    ],
                    'EventTag' => [
                        'namespace' => '\Event\Model',
                        'baseTable' => 'event_tag',
                        'baseTablePrefix' => 'event_tag_',
                        'relationType' => 'manyToMany',
                        'relationName' => 'tag',
                    ],
                    'EventCategory' => [
                        'namespace' => '\Event\Model',
                        'baseTable' => 'event_category',
                        'baseTablePrefix' => 'event_category_',
                        'relationType' => 'manyToMany',
                        'relationName' => 'category',
                    ]
                ],
/*                'files' => [
                    'images' => [
                        'dependencyField' => 'id',
                        'path' => '/home/eventcron/www/EventWeekly/public/upload/img/event'
                    ]
                ]*/
            ]
        ]
    ],

    'shardingConfigServise' => [
        'mode' => [
            'oddeven' => [],
            'limitbatch' => [
                'schema' => [
                    'mysql' => 'create table $tableName
							(id int unsigned not null auto_increment primary key,
							 criteria_min int unsigned not null default 1,
							 criteria_max int unsigned not null default 1,
							 dbname varchar(50) not null,
							 tblname varchar(50) not null)'
                ]
            ],
            'loadbalance' => [
                'schema' => [
                    'mysql' => 'create table $tableName
							(id int unsigned not null auto_increment primary key,
							 criteria int unsigned not null,
							 dbname varchar(50) not null,
							 tblname varchar(50) not null)'
                ]
            ]
        ]
    ]
]);

