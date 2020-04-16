<?php

namespace App\src\DAO;

use PDO;
use Exception;


abstract class DAO
{

    private $connection;



    private function checkConnection()
    {
        //Vérifie si la connexion est nulle et fait appel à getConnection()
        if($this->connection===null)
        {
            return $this->getConnection();
        }
        //si la co existe  on la renvoie
        return $this->connection;

    }



    private function getConnection()
    {

        try{
            $connection = new PDO(DB_HOST, DB_USER, DB_PASS );
            $connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $connection;
        }
        catch(Exception $e){

            echo 'erreur de connection '.$e->getMessage();

        }
    }

    protected function createQuery($sql, $parameters=null)
    {

        if ($parameters) {
            $result = $this->checkConnection()->prepare($sql);
            $result->execute($parameters);
            return $result;
        }

        $result = $this->checkConnection()->query($sql);
        return $result;
    }


}