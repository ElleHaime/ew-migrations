<?php

return new \Phalcon\Config([
    'messageCenter'=> [
        'develop' => [
            'adapter' => 'rabbit',
            'host' => '172.31.37.161',
            'port' => 5672,
            'username' => 'cron',
            'password' => 'BejaSwuv3dra',
            'vhost' => '/',
            'type' => 'lazy',
            'class' => 'MessageCenter',
            'exchangeType' => 'topic',
            'exchangePrefix' => 'eventdev',
            'queuePrefix' => 'eventdev',
        ],
        'prod' => [
            'adapter' => 'rabbit',
            'host' => '172.31.37.161',
            'port' => 5672,
            'username' => 'cron',
            'password' => 'BejaSwuv3dra',
            'vhost' => '/',
            'type' => 'lazy',
            'class' => 'MessageCenter',
            'exchangeType' => 'topic',
            'exchangePrefix' => 'eventprod',
            'queuePrefix' => 'eventprod',
        ]
    ],

    'mailCenter' => [
        'develop' => [
            'siteurl' => 'http://dev.eventweekly.com',
            'host' => '172.31.37.161',
            'port' => '3306',
            'dbname' => 'eventweekly_dev',
            'username' => 'cron_remote',
            'password' => 'BQTvZB29pS9wFWPa',
            'path' => realpath(__DIR__ . '/../../cron/models/MailCenter'),
            'options' => array(
                'mandrillApiKey'=>'YtKla6YI5PrIm-mYYnPQ-g',
                'fromName' => 'eventweekly',
                'fromEmail' => 'support@eventweekly.com'
            ),
            'affiliateId' => '10laz6'
        ],        
	'prod' => [
            'siteurl' => 'http://eventweekly.com',
            'host' => '172.31.37.161',
            'port' => '3306',
            'dbname' => 'eventweekly_prod',
            'username' => 'cron_remote',
            'password' => 'BQTvZB29pS9wFWPa',
            'path' => realpath(__DIR__ . '/../../cron/models/MailCenter'),
            'options' => array(
                'mandrillApiKey'=>'YtKla6YI5PrIm-mYYnPQ-g',
                'fromName' => 'eventweekly',
                'fromEmail' => 'support@eventweekly.com'
            ),
            'affiliateId' => '10laz6'
        ],
    ],

    'elastic' => [
        'develop' => [
            'index' => 'eventdev',
            'connections' => [
                [
                    'host' => '172.31.37.161',
                    'port' => 9200
                ]
            ]
        ],
		'prod' => [
            'index' => 'eventprod',
            'connections' => [
                [
                    'host' => '172.31.37.161',
                    'port' => 9200
                ]
            ]
        ],
		'local' => [
			//'index' => 'eventweekly',
			'index' => 'eventweeklytest',
			'connections' => [
				[
					'host' => 'localhost',
					'port' => 9200
				]
			]
		],
        'ts1' => [
            'index' => 'eventts1',
            'connections' => [
                [
                    'host' => '172.31.32.41',
                    'port' => 9200
                ]
            ]
        ]
    ]
]);


