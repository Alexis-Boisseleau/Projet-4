<?php
namespace App\config;

use App\src\controller\FrontController;
use App\src\controller\ErrorController;
use App\src\controller\BackController;
use Exception;


class Router
{

    private $frontController;


    public function __construct(){
        $this->frontController = new FrontController();
        $this->errorController = new ErrorController();
        $this->backController = new backController();

    }


    public function run()
    {
        try{
            if(isset($_GET['route'])) {
                if($_GET['route'] === 'article') {

                    $this->frontController->article($_GET['articleId']);

                }else if($_GET['route'] === 'addArticle') {

                    $this->backController->addArticle($_POST);

                } else {
                    $this->errorController->errorNotFound();

                }
            } else {
                $this->frontController->home();

            }
        }
        catch (Exception $e) {
            $this->errorController->errorServer();

        }
    }

}