<?php

namespace App\src\DAO;

use App\config\Parameter;
use App\src\model\Comment;

class CommentDAO extends DAO
{

    private function buildObject($row)
    {
        $comment = new Comment();
        $comment->setId($row['id']);
        $comment->setAuthor($row['author']);
        $comment->setContent($row['content']);
        $comment->setCreatedAt($row['createdAt']);
        $comment->setFlag($row['flag']);
        return $comment;
    }

    public function getCommentsFromArticle($articleId)
    {
        $sql = 'SELECT id, author, content, createdAt, flag FROM comments WHERE articleid = ? ORDER BY createdAt DESC';
        $result = $this->createQuery($sql, [$articleId]);
        $comments = [];
        foreach ($result as $row) {
            $commentId = $row['id'];
            $comments[$commentId] = $this->buildObject($row);
        }
        $result->closeCursor();
        return $comments;

    }


    public function addComment(Parameter $post, $articleId)
    {
        $sql = 'INSERT INTO comments (author, content, createdAt, flag, articleid) VALUES (?, ?, NOW(), ?, ?)';
        $this->createQuery($sql, [$post->get('author'), $post->get('content'), 0, $articleId]);
    }

    public function flagComment($commentId)
    {
        $sql = 'UPDATE comments SET flag = ? WHERE id = ?';
        $this->createQuery($sql, [1, $commentId]);
    }



}