<?php
namespace app\src\controller;

class ErrorController
{

    public function errorServer()
    {
         echo 'erreur server';
    }

    public function errorNotFound()
    {
       echo 'page introuvable';
    }

}