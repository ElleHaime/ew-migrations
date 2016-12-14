<?php

return new \Phalcon\Config([
    'application' => [
        'controllersDir' => realpath(__DIR__ . '/../../cron/controllers/'),
        'modelsDir'      => realpath(__DIR__ . '/../../cron/models/'),
        'libraryDir'     => realpath(__DIR__ . '/../../cron/library/'),
        'dataDir'                => realpath(__DIR__ . '/../../cron/data/'),
        'appDir'                 => realpath(__DIR__ . '/../../cron/'),
        'rootDir'                => realpath(__DIR__ . '/../../../'),
        'documentRoot'   => realpath(__DIR__ . '/../../../cli/'),
        'baseUri'        => 'cron.eventweekly.com',
    ],


    'models' => [
        'metadata' => [
            'adapter' => 'Memory'
        ]
    ],

    'rabbitmq' => [
        'host' => 'localhost',
        'port' => 5672,
        'username' => 'guest',
        'password' => 'guest',
        'vhost' => '/',
        'exchangeType' => 'topic',
        'queuePrefix' => 'eventweekly-cron'
    ],

    'daemon' => [
        'socket' => 'unix:///tmp/php.event.cron.manager.sock',
        'log' => '/tmp/php.event.cron.manager.log',
        'error' => '/tmp/php.event.cron.manager.error.log',
        'pid' => '/tmp/php.event.cron.manager.pid',
        'lock' => '/tmp/php.event.cron.manager.lock',
        'settings' => [
            'type' => 'model',
            'model' => '\CronManager\Queue\Model\Settings',
            'environment' => 'develop'
        ]

    ]
]);
