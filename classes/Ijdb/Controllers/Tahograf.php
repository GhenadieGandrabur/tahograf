<?php
namespace Ijdb\Controllers;
use \Ninja\DatabaseTable;

class Tahograf
{
	private $tahoTable;
	private $producerTable;
   
	public function __construct(DatabaseTable $tahoTable, DatabaseTable $producerTable) {
		$this->tahoTable = $tahoTable;		
		$this->producerTable = $producerTable;		
	} 

	public function home() {
		$title = 'Tahograf';
		return ['template' => 'home.html.php', 'title' => $title];
	}

	public function tahograf() {
		$tahos = $this->tahoTable->findAll();
		$allproducts = []; 
		foreach ($tahos as $taho) {
			 $producer = $this->producerTable->findById($taho->producer_id);			 
			 $allproducts[] = [
				  'taho' => $taho,
				  'producer' => $producer
			 ];
		}
  
		$title = 'Tahograf';
		$totalTaho = $this->tahoTable->total();
  
		return [
			 'template' => 'tahograf.html.php',
			 'title' => $title,
			 'variables' => [
				  'totalTaho' => $totalTaho,
				  'allproducts' => $allproducts,
			 ]
		];
  }


  

	public function heaters() {
	$tahos = $this->tahoTable->findAll();
		$allproducts = []; 
		foreach ($tahos as $taho) {
			 $producer = $this->producerTable->findById($taho->producer_id);			 
			 $allproducts[] = [
				  'taho' => $taho,
				  'producer' => $producer
			 ];
		}  
		$title = 'Heaters';
		$totalTaho = $this->tahoTable->total();  
		return [
			 'template' => 'heaters.html.php',
			 'title' => $title,
			 'variables' => [
				  'totalTaho' => $totalTaho,
				  'allproducts' => $allproducts,
			 ]
		];
	}

	public function radioCb() {
	$tahos = $this->tahoTable->findAll();
		$allproducts = []; 
		foreach ($tahos as $taho) {
			 $producer = $this->producerTable->findById($taho->producer_id);			 
			 $allproducts[] = [
				  'taho' => $taho,
				  'producer' => $producer
			 ];
		}  
		$title = 'Heaters';
		$totalTaho = $this->tahoTable->total();  
		return [
			 'template' => 'radioCb.html.php',
			 'title' => $title,
			 'variables' => [
				  'totalTaho' => $totalTaho,
				  'allproducts' => $allproducts,
			 ]
		];
	}

	public function radiovhfuhf(){
	$tahos = $this->tahoTable->findAll();
		$allproducts = []; 
		foreach ($tahos as $taho) {
			 $producer = $this->producerTable->findById($taho->producer_id);			 
			 $allproducts[] = [
				  'taho' => $taho,
				  'producer' => $producer
			 ];
		}  
		$title = 'Heaters';
		$totalTaho = $this->tahoTable->total();  
		return [
			 'template' => 'radiovhfuhf.html.php',
			 'title' => $title,
			 'variables' => [
				  'totalTaho' => $totalTaho,
				  'allproducts' => $allproducts,
			 ]
		];
	}
	

	
}