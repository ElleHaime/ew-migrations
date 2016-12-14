<?php

return new \Phalcon\Config([
    'database' => [
	'db' => [
            'adapter'  => 'Mysql',
            'host'     => 'localhost',
            //'host'     => '127.0.0.1',
            //'port'     => '3306',
            'username' => 'root',
            'password' => 'root',
            'name'     => 'eventweekly_cron',
            'charset'  => 'utf8'
        ],
		'dbMaster' => [
			'adapter'  => 'Mysql',
			'host'     => 'localhost',
			'username' => 'root',
			'password' => 'root',
			'name'     => 'ewshard',
			'charset'  => 'utf8'
		],
        /*'dbMaster' => [
            'adapter'  => 'Mysql',
            'host'     => '172.31.37.161',
            'username' => 'cron_remote',
            'password' => 'BQTvZB29pS9wFWPa',
            'name'     => 'eventweekly_prod',
            'charset'  => 'utf8'
        ],*/	
        /*'dbMaster' => [
            'adapter'  => 'Mysql',
            'host'     => '172.31.0.33',
            'port'     => '3306',
            'username' => 'event_cron',
            'password' => 'event_cron_brUZacra7ruC',
            'name'     => 'eventweekly_ts1',
            'charset'  => 'utf8'
        ], */
	/*'dbMaster' => [
            'adapter'  => 'Mysql',
            'host'     => '172.31.33.64',
            'port'     => '3306',
            'username' => 'eventtempcron',
            'password' => 'brUZacra7ruCtempcron',
            'name'     => 'eventweekly_temp',
            'charset'  => 'utf8'
        ], */
    ]
]);
