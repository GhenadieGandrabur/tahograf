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
            p.show = 0 
            AND
            p.category_id=$categoryId 
            AND (p.title LIKE '$search%' OR pr.name LIKE '$search%')
            ORDER BY p.$sort
            LIMIT $page, 12")->fetchAll(\PDO::FETCH_OBJ);
    }

    public function totalProducts($categoryId) {
		$query = $this->query("SELECT COUNT(*) FROM `products` WHERE category_id=$categoryId");
		$row = $query->fetch();
		return $row[0];
	}
}