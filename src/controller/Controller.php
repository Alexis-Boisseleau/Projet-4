<?php 
namespace app\src\controller;

use App\src\DAO\ArticleDAO;
use App\src\DAO\CommentDAO;
use App\src\model\View;

abstract class controller
{

    protected $articleDAO;
    protected $commentDAO;
    protected $view;

    public function __construct()
    {
        $this->articleDAO = new ArticleDAO();
        $this->commentDAO = new CommentDAO();
        $this->view = new View();

    }

}