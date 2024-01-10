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
			
		$title = 'Tahograf';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Tahografe si accesorii',
				  'sort' => $sort, 
				  'url' => 'tahografe',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(1) /12)
			 ]
		];
  }


  

	public function heaters() {
		$sort=htmlspecialchars($_GET['sort']??'title');
		$tahos = $this->tahoTable->findAllProducts(2, intval($_GET['page'] ?? 0) * 12, $sort);
			
		$title = 'Heaters';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				'title' => 'Incalzitoare si piese',
				'sort' => $sort, 
				  'url' => 'heaters',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(2) /12)
			 ]
		];
	}

	public function radioCb() {
		$sort=htmlspecialchars($_GET['sort']??'title');
		$tahos = $this->tahoTable->findAllProducts(3, intval($_GET['page'] ?? 0) * 12, $sort);
			
		$title = 'Radio CB';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Statii radio CB',
				  'sort' => $sort, 
				  'url' => 'radiocb',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(3) /12)
			 ]
		];
	}

	public function radiovhfuhf(){
		$sort=htmlspecialchars($_GET['sort']??'title');
		$tahos = $this->tahoTable->findAllProducts(4, intval($_GET['page'] ?? 0) * 12, $sort);
			
		$title = 'Radio VHF/UHF';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'title' => 'Statii VHF/UHF',
				  'sort' => $sort, 
				  'url' => 'radiovhfuhf',
				  'totalTaho' => $totalTaho,
				  'allproducts' => $tahos,
				  'totalPages' => ceil($this->tahoTable->totalProducts(4) /12)
			 ]
		];
	}
	

	
}