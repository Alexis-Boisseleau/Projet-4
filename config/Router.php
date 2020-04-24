<?php

namespace App\config;
use App\src\controller\BackController;
use App\src\controller\ErrorController;
use App\src\controller\FrontController;
use Exception;

class Router
{
    private $frontController;
    private $errorController;
    private $backController;
    private $request;

    public function __construct()
    {
        $this->request = new Request();
        $this->frontController = new FrontController();
        $this->backController = new BackController();
        $this->errorController = new ErrorController();
    }

    public function run()
    {
        $route = $this->request->getGet()->get('route');
        try {
            if (isset($route))
            {
                if ($route === 'article'){
                    $this->frontController->article($this->request->getGet()->get('articleId'));
                }
                else if ($route === 'addArticle') {
                    $this->backController->addArticle($this->request->getPost());
                } else if ($route === 'editArticle') {
                    $this->backController->editArticle($this->request->getPost(), $this->request->getGet()->get('articleId'));
                } else if ($route === 'addComment') {
                    $this->frontController->addComment($this->request->getPost(), $this->request->getGet()->get('articleId'));
                } else {
                    $this->errorController->errorNotFound();
                }
            }

            else {
                $this->frontController->home();

            }
        } catch (Exception $e) {
            $this->errorController->errorServer();
        }

    }


}