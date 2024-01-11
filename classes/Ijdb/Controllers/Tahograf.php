<?php
namespace Ijdb\Controllers;

use Ijdb\Repositories\ProductRepository;
use \Ninja\DatabaseTable;

class Tahograf
{
	private $tahoTable;
	private $producerTable;
   
	public function __construct(ProductRepository $tahoTable, DatabaseTable $producerTable) {
		$this->tahoTable = $tahoTable;		
		$this->producerTable = $producerTable;		
	} 

	public function home() {
		$title = 'Tahograf';
		return ['template' => 'home.html.php', 'title' => $title];
	}

	public function tahograf() {
		$sort=htmlspecialchars($_GET['sort']??'title');
		$search=htmlspecialchars($_GET['search']??'');
		$tahos = $this->tahoTable->findAllProducts(1, intval($_GET['page'] ?? 0) * 12, $sort, $search);
		$producers = $this->tahoTable->findAllProducers(1);
			
		$title = 'Tahograf';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Tahografe si accesorii',
				  'sort' => $sort, 
				  'search' => $search,
				  'producers' => $producers,
				  'url' => 'tahografe',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(1, $search) /12)
			 ]
		];
  }


  

	public function heaters() {
		$sort=htmlspecialchars($_GET['sort']??'title');
		$search=htmlspecialchars($_GET['search']??'');
		$tahos = $this->tahoTable->findAllProducts(2, intval($_GET['page'] ?? 0) * 12, $sort, $search);
		$producers = $this->tahoTable->findAllProducers(2);
		foreach($producers as $index => $producer)
		{			
			$producers[$index]['enabled'] =  in_array($producer['id'], $_GET['producer'] ?? []);			
		}

		$title = 'Heaters';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				'title' => 'Incalzitoare si piese',
				'sort' => $sort,
				  'search' => $search, 
				  'url' => 'heaters',
				  'producers' => $producers,
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(2, $search) /12)
			 ]
		];
	}

	public function radioCb() {
		$sort=htmlspecialchars($_GET['sort']??'title');
		$search=htmlspecialchars($_GET['search']??'');
		$tahos = $this->tahoTable->findAllProducts(3, intval($_GET['page'] ?? 0) * 12, $sort, $search);
			
		$title = 'Radio CB';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Statii radio CB',
				  'sort' => $sort,
				  'search' => $search, 
				  'url' => 'radiocb',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(3, $search) /12)
			 ]
		];
	}

	public function radiovhfuhf(){
		$sort=htmlspecialchars($_GET['sort']??'title');
		$search=htmlspecialchars($_GET['search']??'');
		$tahos = $this->tahoTable->findAllProducts(4, intval($_GET['page'] ?? 0) * 12, $sort, $search);
			
		$title = 'Radio VHF/UHF';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Statii VHF/UHF',
				  'sort' => $sort,
				  'search' => $search, 
				  'url' => 'radiovhfuhf',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(4, $search) /12)
			 ]
		];
	}
	

	
}