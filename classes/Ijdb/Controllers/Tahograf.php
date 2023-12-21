<?php
namespace Ijdb\Controllers;

class Tahograf
{
    	public function tahograf() {
		

		return ['template' => 'tahograf.html.php', 'title' => 'tahograf'];
	}

    	public function home() {
		$title = 'Internet Joke Database';

		return ['template' => 'home.html.php', 'title' => $title];
	}
}