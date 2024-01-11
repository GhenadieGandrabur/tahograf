<?php
namespace Ijdb\Repositories;
use \Ninja\DatabaseTable;

class ProductRepository extends DatabaseTable
{
    public function findAllProducts($categoryId, $page = 0, $sort = 'title', $search = '' )
    {
        return $this->query("SELECT 
            p.*,
            pr.name as producer_name
            FROM `products` p
            LEFT JOIN `producers` pr ON p.producer_id=pr.id
            WHERE
            p.show = 1 
            AND
            p.category_id=$categoryId 
            AND (p.title LIKE '$search%' OR pr.name LIKE '$search%')
            ORDER BY p.$sort
            LIMIT $page, 12")->fetchAll(\PDO::FETCH_OBJ);
    }

    public function findAllProducers($categoryId)
    {
        return $this->query("SELECT 
            pr.id,
            pr.name
            FROM `products` p
            LEFT JOIN `producers` pr ON p.producer_id=pr.id
            WHERE
            p.show = 1 
            AND
            p.category_id=$categoryId
            GROUP BY pr.id, pr.name
           ")->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function totalProducts($categoryId, $search = '') {
		$query = $this->query("SELECT 
            COUNT(*) 
            FROM `products` p
            LEFT JOIN `producers` pr ON p.producer_id=pr.id
            WHERE 
            p.category_id=$categoryId
            AND (p.title LIKE '$search%' OR pr.name LIKE '$search%')
            ");
		$row = $query->fetch();
		return $row[0];
	}
}