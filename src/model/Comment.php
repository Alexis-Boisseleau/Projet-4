<?php
namespace App\src\model;

class Comment
{
    private $id;
    private $author;
    private $content;
    private $createdAt;
    private $flag;

    public function getId()
    {
        return $this->id;

    }


    public function getAuthor()
    {
        return $this->author;

    }


    public function getContent()
    {
        return $this->content;

    }


    public function getCreatedAt()
    {
        return $this->createdAt;

    }


    public function isFlag()
    {
        return $this->flag;
    }


    public function setId ($id)
    {
        $this->id = $id;

    }


    public function setAuthor ($author)
    {
        $this->author = $author;

    }


    public function setContent ($content)
    {
        $this->content = $content;

    }


    public function setCreatedAt ($createdAt)
    {
        $this->createdAt = $createdAt;

    }


    public function setFlag($flag)
    {
        $this->flag = $flag;
    }



}