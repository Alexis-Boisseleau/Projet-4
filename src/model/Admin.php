<?php

namespace App\src\model;

class User
{
    private $id;
    private $pseudo;
    private $mdp;

    private function getId()
    {
        return $this->id;
    }

    private function setId($id)
    {
        $this->id =$id;
    }

    private function getPseudo()
    {
        return $this->pseudo;
    }

    private function setPseudo($pseudo)
    {
        $this->pseudo =$pseudo;
    }

    private function getmdp()
    {
        return $this->mdp;
    }

    private function setmdp($mdp)
    {
        $this->mdp =$mdp;
    }

}