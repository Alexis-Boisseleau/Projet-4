<?php

namespace App\src\controller;

use App\config\Request;
use App\src\constraint\Validation;
use App\src\DAO\ArticleDAO;
use App\src\DAO\CommentDAO;
use App\src\DAO\AdminDAO;
use App\src\model\View;

abstract class Controller
{

    protected $articleDAO;

    protected $commentDAO;

    protected $adminDAO;

    protected $view;

    private $request;

    protected $get;

    protected $post;

    protected $session;

    protected $validation;

    public function __construct()
    {
        $this->articleDAO = new ArticleDAO();
        $this->commentDAO = new CommentDAO();
        $this->adminDAO = new adminDAO();
        $this->view = new View();
        $this->validation = new Validation();
        $this->request = new Request();
        $this->get = $this->request->getGet();
        $this->post = $this->request->getPost();
        $this->session = $this->request->getSession();
    }
}