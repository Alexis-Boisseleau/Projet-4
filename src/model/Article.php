<?php

namespace App\src\model;

class Article
{

    private $id;
    private $title;
    private $content;
    private $createdAt;

    // les getters

    public function getId()
    {
       return $this->id;

    }


    public function getTitle()
    {
        return $this->title;

    }


    public function getContent()
    {
        return $this->content;

    }

   

    public function getCreatedAt()
    {
        return $this->createdAt;

    }

    // les setters

    public function setId($id)
    {
        $id = (int) $id;

        if($id > 0) {
            $this->id = $id;
        }

    }


   public function setTitle($title)
    {
        if(is_string($title)) {
            $this->title = $title;
        }


    }


    public function setContent($content)
    {

        $this->content = $content;

    }



    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;

    }


}