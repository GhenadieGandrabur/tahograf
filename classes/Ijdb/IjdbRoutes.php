<?php
namespace Ijdb;
use Ijdb\Controllers\Author;
use Ijdb\Controllers\Category;
use Ijdb\Controllers\Drugs;
use Ijdb\Controllers\Lang;
use Ijdb\Controllers\Login;
use Ijdb\Controllers\Recipe;
use Ijdb\Controllers\Register;
use Ijdb\Controllers\Test;
use Ijdb\Controllers\Visit;
use Ijdb\Controllers\Report;
use Ijdb\Repositories\ReportRepository;
use Ninja\Authentication;
use Ninja\DatabaseTable;
use Ijdb\Repositories\AuthorRepository;
use Ijdb\Services\EmailService;
use Ijdb\Services\AuthorService;

class IjdbRoutes implements \Ninja\Routes {
    private $authorsTable;
	private $jokesTable;
	private $categoriesTable;
	private $jokeCategoriesTable;
	private $authentication;
	private $tahoTable;
	private $producerTable;
	private $serviceTable;
	
	

	public function __construct() {
		include __DIR__ . '/../../includes/DatabaseConnection.php'; 		
 		
		$this->jokesTable = new \Ninja\DatabaseTable($pdo, 'joke', 'id', '\Ijdb\Entity\Joke', [ &$this->authorsTable, &$this->jokeCategoriesTable]);
		$this->authorsTable = new \Ninja\DatabaseTable($pdo, 'author', 'id', '\Ijdb\Entity\Author', [ &$this->jokesTable]);
		$this->categoriesTable = new \Ninja\DatabaseTable($pdo, 'category', 'id', '\Ijdb\Entity\Category', [ &$this->jokesTable, &$this->jokeCategoriesTable]);
		$this->jokeCategoriesTable = new \Ninja\DatabaseTable($pdo, 'joke_category', 'categoryId');
		$this->authentication = new \Ninja\Authentication($this->authorsTable, 'email', 'password');

 		$this->tahoTable = new \Ninja\DatabaseTable($pdo, 'products', 'catigory_id');
 		$this->producerTable = new \Ninja\DatabaseTable($pdo, 'producers', 'id');
 		$this->serviceTable = new \Ninja\DatabaseTable($pdo, 'service', 'id');
	}

	public function getRoutes(): array {
	
		// $authorController = new \Ijdb\Controllers\Register($this->authorsTable);
		// $loginController = new \Ijdb\Controllers\Login($this->authentication);
		// $categoryController = new \Ijdb\Controllers\Category($this->categoriesTable);
		$tahoController = new \Ijdb\Controllers\Tahograf($this->tahoTable, $this->producerTable);	 
		$serviceController = new \Ijdb\Controllers\Service($this->serviceTable);	 

		$routes = [			
			'' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'home'
				]
				],
			'tahografe' => [
				'GET' => [
					'controller' => 	$tahoController,
					'action' => 'tahograf'
				]
				],
			'heaters' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'heaters'
				]
				],
			'radiocb' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'radioCb'
				]
				],
			'radiovhfuhf' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'radiovhfuhf'
				]
				],
			'service' => [
				'GET' => [
					'controller' => $serviceController,
					'action' => 'list'
				]
			]
		];

		return $routes;
	}

	public function getAuthentication(): \Ninja\Authentication {
		return $this->authentication;
	}

	public function checkPermission($permission): bool {
		$user = $this->authentication->getUser();

		if ($user && $user->hasPermission($permission)) {
			return true;
		} else {
			return false;
		}
	}

}