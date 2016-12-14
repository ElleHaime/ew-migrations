<?php

return new \Phalcon\Config([
    'environment' => [
        'prod' => [
            'database' => 'dbMaster',
            'messageCenter' => 'prod',
            'mailCenter' => 'prod',
            'elastic'  => 'prod'
        ],
	 	'develop' => [
	            'database' => 'dbMaster',
	            'messageCenter' => 'develop',
	            'mailCenter' => 'develop',
	            'elastic'  => 'develop'
	        ],
	     'ts1' => [
	            'database' => 'dbMaster',
	            'messageCenter' => 'ts1',
	            'mailCenter' => 'ts1',
	            'elastic'  => 'ts1'
	        ],
		'local' => [
				'database' => 'dbMaster',
				'messageCenter' => 'ts1',
				'mailCenter' => 'ts1',
				'elastic'  => 'local'
			]
	
	]
]);
