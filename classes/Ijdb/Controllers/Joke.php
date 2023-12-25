<?php
namespace Ijdb\Controllers;

use \Ninja\Authentication;
use \Ninja\DatabaseTable;

class Joke
{
    private $authorsTable;
    private $jokesTable;
    private $categoriesTable;
    private $authentication;

    public function __construct(DatabaseTable $jokesTable, DatabaseTable $authorsTable, DatabaseTable $categoriesTable, Authentication $authentication)
    {
        $this->jokesTable = $jokesTable;
        $this->authorsTable = $authorsTable;
        $this->categoriesTable = $categoriesTable;
        $this->authentication = $authentication;
    }

    public function list()
    {

        if (isset($_GET['category'])) {
            $category = $this->categoriesTable->findById($_GET['category']);
            $kids = $category->getJokes();
        } else {
            $kids = $this->jokesTable->findAll();
        }

        $title = 'Joke list';

        $totalJokes = $this->jokesTable->total();

        $author = $this->authentication->getUser();

        return ['template' => 'jokes.html.php',
            'title' => $title,
            'variables' => [
                'totalJokes' => $totalJokes,
                'kids' => $kids,
                'userId' => $author->id ?? null,
                'categories' => $this->categoriesTable->findAll(),
            ],
        ];
    }

    public function home()
    {
        $title = 'Internet Joke Database';

        return ['template' => 'home.html.php', 'title' => $title];
    }

    public function delete()
    {

        $author = $this->authentication->getUser();

        $kide = $this->jokesTable->findById($_POST['id']);

        if ($kide->authorId != $author->id) {
            return;
        }

        $this->jokesTable->delete($_POST['id']);

        header('location: /joke/list');
    }

    public function saveEdit()
    {
        $author = $this->authentication->getUser();

        $kids = $_POST['kids'];

        $kids['jokedate'] = new \DateTime();

        $jokeEntity = $author->addJoke($kids);

        $jokeEntity->clearCategories();

        foreach ($_POST['category'] as $categoryId) {
            $jokeEntity->addCategory($categoryId);
        }

        header('location: /joke/list');
    }

    public function edit()
    {
        $author = $this->authentication->getUser();
        $categories = $this->categoriesTable->findAll();

        if (isset($_GET['id'])) {
            $kids = $this->jokesTable->findById($_GET['id']);
        }

        $title = 'Edit kids';

        return ['template' => 'editjoke.html.php',
            'title' => $title,
            'variables' => [
                'kids' => $kids ?? null,
                'userId' => $author->id ?? null,
                'categories' => $categories,
            ],
        ];
    }

}
