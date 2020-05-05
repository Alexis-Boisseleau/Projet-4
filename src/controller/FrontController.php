<?php
namespace App\src\controller;

use App\config\Parameter;

class FrontController extends controller
{


    public function home()
    {
        $articles = $this->articleDAO->getArticles();
        return $this->view->render('home', ['articles' => $articles]);

    }


    public function article($articleId)
    {
        $article = $this->articleDAO->getArticle($articleId);
        $comments = $this->commentDAO->getCommentsFromArticle($articleId);
        return $this->view->render('single', [
            'article' => $article,
            'comments' => $comments
        ]);

    }


    public function addComment(Parameter $post, $articleId)
    {

        if($post->get('submit')) {
            $this->commentDAO->addComment($post, $articleId);
            $this->session->set('add_comment', 'votre commentaire a bien été ajouté');
            header('Location: ../public/index.php');
          }

        $article = $this->articleDAO->getArticle($articleId);
        $comments = $this->commentDAO->getCommentsFromArticle($articleId);
        return $this->view->render('single', [
            'article'  => $article,
            'comments' => $comments,
            'post'     => $post
        ]);

    }


    public function flagComment($commentId)
    {
        $this->commentDAO->flagComment($commentId);
        $this->session->set('flag_comment', 'Le commentaire a bien été signalé');
        header('Location: ../public/index.php');
    }



}