<?php
namespace Ijdb;

class IjdbRoutes implements \Ninja\Routes {
	private $authorsTable;
	private $jokesTable;
	private $categoriesTable;
	private $jokeCategoriesTable;
	private $authentication;
	private $tahograf;

	public function __construct() {
		include __DIR__ . '/../../includes/DatabaseConnection.php';

		$this->jokesTable = new \Ninja\DatabaseTable($pdo, 'joke', 'id', '\Ijdb\Entity\Joke', [&$this->authorsTable, &$this->jokeCategoriesTable]);
 		$this->authorsTable = new \Ninja\DatabaseTable($pdo, 'author', 'id', '\Ijdb\Entity\Author', [&$this->jokesTable]);
 		$this->categoriesTable = new \Ninja\DatabaseTable($pdo, 'category', 'id', '\Ijdb\Entity\Category', [&$this->jokesTable, &$this->jokeCategoriesTable]);
 		$this->jokeCategoriesTable = new \Ninja\DatabaseTable($pdo, 'joke_category', 'categoryId');
		$this->authentication = new \Ninja\Authentication($this->authorsTable, 'email', 'password');
	}

	public function getRoutes(): array {
		$jokeController = new \Ijdb\Controllers\Joke($this->jokesTable, $this->authorsTable, $this->categoriesTable, $this->authentication);
		$authorController = new \Ijdb\Controllers\Register($this->authorsTable);
		$loginController = new \Ijdb\Controllers\Login($this->authentication);
		$categoryController = new \Ijdb\Controllers\Category($this->categoriesTable);
		$tahoController = new \Ijdb\Controllers\Tahograf();
	    var_dump($authorController);
		die;

		$routes = [
			
			'' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'home'
				]
				],
			'tahografe' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'tahograf'
				]
				],
			'incalzitoare' => [
				'GET' => [
					'controller' => $tahoController,
					'action' => 'home'
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