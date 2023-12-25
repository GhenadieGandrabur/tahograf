<?php
namespace Ijdb\Controllers;
use \Ninja\DatabaseTable;


class Service {
	private $serviceTable;


	public function __construct(DatabaseTable $serviceTable) 
	{
		$this->serviceTable = $serviceTable;
	}

	public function list() {		
        $services = $this->serviceTable->findAll();
		return ['template' => 'service.html.php', 
				'title' => "Service", 
				'variables' => [						
						'services' => $services,						
					]
				];
	}	
}