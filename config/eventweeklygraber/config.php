<?php

$cfg = [
	'database' => [
		'adapter' => 'Mysql',
		'host' => 'localhost',
		'username' => 'root',
		'password' => 'root',
		'dbname' => 'ewshard',
		'port' => 3306,
		'charset' => 'utf8',
		'options' => array (
		    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
		    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARACTER SET utf8'
		)
	],

	'cache' => [
		'adapter' => 'Memcache',
		'cacheDir' => '',
		'host' => 'localhost',
		'port' => '11211',
		'persistent' => false,
		'lifetime' => '86400',
		'prefixes' => [
			'fbUid' => 'fbUid',
			'ebUid' => 'ebUid',
		]
	],

	'queue' => [
		'adapter' => 'RabbitMQ',
		'host' => 'localhost',
		'vhost' => '/',
		'port' => '5672',
		'login' => 'guest',
		'password' => 'guest',
		'harvester' => [
			'exchange' => 'amq.direct',
			'routing_key' => 'temp.facebook.user',
			'type' => AMQP_EX_TYPE_DIRECT
		],
		'harvesterEbrite' => [
			'exchange' => 'amq.direct',
			'type' => AMQP_EX_TYPE_DIRECT,
			'routing_key' => 'temp.eventbrite.location'
		],
		'harvesterCreators' => [
			'exchange' => 'amq.direct',
			'type' => AMQP_EX_TYPE_DIRECT,
			'routing_key' => 'temp.facebook.creators'
		],
		'harvesterCustom' => [
			'exchange' => 'amq.direct',
			'type' => AMQP_EX_TYPE_DIRECT,
			'routing_key' => 'temp.facebook.custom'
		],
		'harvesterVenues' => [
				'exchange' => 'amq.direct',
				'type' => AMQP_EX_TYPE_DIRECT,
				'routing_key' => 'temp.facebook.venues'
		],
		'harvesterVenuesData' => [
				'exchange' => 'amq.direct',
				'type' => AMQP_EX_TYPE_DIRECT,
				'routing_key' => 'temp.facebook.venues_data'
		],
		'distributor' => [
			'exchange' => 'amq.fanout',
			'routing_key' => 'distributor'
		]
	],

	'application' => [
		'modelsDir' => APPLICATION_PATH . '/models',
		'libraryDir' => APPLICATION_PATH . '/library',

		'GeoIp2' => [
            'userId' => 86277,
            'licenseKey' => 'gAsqWYLrLpdh'
        ],

		'uploadDir' => ['event' => '/var/www/EventWeekly/public/upload/img/event/',
						'venue' => '/var/www/EventWeekly/public/upload/img/venue/'
		],

		'defautTask' => 'observer',
		'defaultAction' => 'observe'
	],
	
	'facebook' => [
		'appId' => '1468169753426411',
		'appSecret' => 'ce207707a5bedc6b12f9d8f552b23a8c',
		'querySourceFile' => '/var/www/EventWeeklyGraber/source/facebook/irish_cities.txt',
		'idSourceFile' => '/var/www/EventWeeklyGraber/source/facebook/id.txt',
		'unsupportedSourceFile' => '/var/www/EventWeeklyGraber/source/facebook/unsupported.txt',
		'migratedSourceFile' => '/var/www/EventWeeklyGraber/source/facebook/venues_migrated.txt',
		'venueGallerySize' => 6,
	],
	
	'eventbrite' => [
		'appKey' => '7KLLCKKSBSLXL4TTLS',
		'authToken' => 'P7YIKECGM375BBRD32QR',
		'anonToken' => 'H6QOM55ZLDXN23UAKMPG',
		'clientSecret' => 'YDCUPH4YMSOURSPVFVIURGICPXO7JUMNRQDAAVNX3D7NPS6KB5',
		'settings' => [
			'parseType' => 'city'
		]
	],


	'fixMode' => [
		'facebookVenue' => false,
		'facebookEventLocation' => false,
		'eventbriteVenue' => false
	],
	
	'sync' => [
		'categorize' => [
			'batchSize' => 200, 
			'pause' => 30 		
		]
	],

	'threads' => false,

	'daemon' => [],

    'elastic' => [
		'index' => 'eventweekly',
		'connections' => [
		    [
			'host' => 'localhost',
			'port' => 9200
		    ]
		]
    ],
    
    'sitemap' => [
    	'domain' => 'http://eventweekly.com',
    	'sitemapPath' => '/var/www/EventWeeklyGraber/seo/sitemap',
    	'indexPath' => '/var/www/EventWeeklyGraber/seo',
    	'sitemapUrl' => 'http://eventweekly.com/sitemap'
    ]
    
];
