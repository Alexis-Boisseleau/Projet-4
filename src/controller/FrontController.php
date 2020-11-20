<?php
namespace App\src\controller;

use App\config\Parameter;

class FrontController extends controller
{


    public function home()
    {
        session_destroy();
        $articles = $this->articleDAO->getArticles();
        return $this->view->render('home', ['articles' => $articles]);

    }


    public function article($articleId)
    {
        $article = $this->articleDAO->getArticle($articleId);
        $comments = $this->commentDAO->getCommentsFromArticle($articleId);
        if(!empty($article)){
            return $this->view->render('single', [
            'article' => $article,
            'comments' => $comments
             ]);
        }

    }


    public function addComment(Parameter $post, $articleId)
    {

        $article = $this->articleDAO->getArticle($articleId);
        if($post->get('submit') ) {
            $errors = $this->validation->validate($post, 'Comment');
            if(!empty($article)){
                if(!$errors) {
                        $this->commentDAO->addComment($post, $articleId);
                        $this->session->set('add_comment', 'Le nouveau commentaire a bien été ajouté');
                        header('Location: ../public/index.php?route=article&articleId='.$articleId);
                }
                    $article = $this->articleDAO->getArticle($articleId);
                    $comments = $this->commentDAO->getCommentsFromArticle($articleId);
                    return $this->view->render('single', [
                        'article' => $article,
                        'comments' => $comments,
                        'post' => $post,
                        'errors' => $errors
                    ]);
            }else{
                echo" <p> Pas possible d'ajouter commentaire sur un article inexistant ;)</p>";
            }

        }

    }


    public function flagComment($commentId)
    {
        $this->commentDAO->flagComment($commentId);
        $this->session->set('flag_comment', 'Le commentaire a bien été signalé');
        header('Location: ../public/index.php');

    }


}