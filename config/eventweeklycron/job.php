<?php

return new \Phalcon\Config([
    'backup' => [
        'database' => [
            'db' => [
                'adapter' => 'db',
                'path' => realpath(__DIR__.'/../../cron/data/').'/backup/database',
                'databases' => [
                    'apppicker_production' => [
                        'database' => 'dbMaster',
                    ]
                ]
            ]
        ],
    ],

    'search' => [
//         'prod' => [
//             'env' => 'prod',
//             'grids' => [
//                 [
//                     'grid' => '\Event\Grid\Search\Event',
//                     'type' => 'event'
//                 ]
//             ]
//         ],
		'local' => [
			'env' => 'local',
			'grids' => [
				[
					'grid' => '\Event\Grid\Search\Event',
					'type' => 'event'
				],
				[
					'grid' => '\Event\Grid\Search\Venue',
					'type' => 'venue'
				]
			]
		],
	/*'ts1' => [
            'env' => 'ts1',
            'grids' => [
                [
                    'grid' => '\Event\Grid\Search\Event',
                    'type' => 'event'
                ]
            ]
        ],*/
	/*'develop' => [
            'env' => 'develop',
            'grids' => [
                [
                    'grid' => '\Event\Grid\Search\Event',
                    'type' => 'event'
                ]
            ]
        ]*/

    ],

    'defaultQueue' => [
        'prod' => []
    ]
]);
