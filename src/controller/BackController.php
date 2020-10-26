<?php

namespace App\src\controller;

use App\config\Parameter;

class BackController extends Controller
{
    public function administration()
    {

        $articles = $this->articleDAO->getArticles();
        $comments = $this->commentDAO->getFlagComments();
        return $this->view->render('administration', [
            'articles' => $articles,
            'comments' => $comments
        ]);
    }


    public function addArticle(Parameter $post)
    {

        if($post->get('submit')) {
            $errors = $this->validation->validate($post, 'Article');
            if(!$errors) {
                $this->articleDAO->addArticle($post);
                $this->session->set('add_article', 'Le nouvel article a bien été ajouté');
                header('Location: ../public/index.php?route=administration');
            }
            return $this->view->render('add_article', [
                'post' => $post,
                'errors' => $errors
            ]);
        }
        return $this->view->render('add_article');
    }

    public function editArticle(Parameter $post, $articleId)
    {
        $article = $this->articleDAO->getArticle($articleId);
        if($post->get('submit')) {
            $errors = $this->validation->validate($post, 'Article');
            if(!$errors) {
                $this->articleDAO->editArticle($post, $articleId);
                $this->session->set('edit_article', 'L\' article a bien été modifié');
                header('Location: ../public/index.php?route=administration');
            }
            return $this->view->render('edit_article', [
                'post' => $post,
                'errors' => $errors
            ]);

        }
        $post->set('id', $article->getId());
        $post->set('title', $article->getTitle());
        $post->set('content', $article->getContent());
        $post->set('author', $article->getAuthor());

        return $this->view->render('edit_article', [
            'post' => $post
        ]);
    }

    public function deleteArticle($articleId)
    {
        $this->articleDAO->deleteArticle($articleId);
        $this->session->set('delete_article', 'L\' article a bien été supprimé');
        header('Location: ../public/index.php?route=administration');
    }

    public function deleteComment($commentId)
    {
        $this->commentDAO->deleteComment($commentId);
        $this->session->set('delete_comment', 'Le commentaire a bien été supprimé');
        header('Location: ../public/index.php?route=administration');
    }

    public function unflagComment($commentId)
    {
        $this->commentDAO->unflagComment($commentId);
        $this->session->set('unflag_comment', 'Le commentaire a bien été désignalé');
        header('Location: ../public/index.php?route=administration');
    }

    public function connexionAdmin(Parameter $post){

        if($post->get('submit')){
            $result = $this->adminDAO->admin($post);
            if($result && $result['mdpValide']){
                echo ' <a href="../public/index.php?route=administration" class="btn btn-link" >Administration</a>';
            }else{
                $this->session->set('error_admin', 'Le pseudo ou le mot de passe sont incorrects');
                return $this->view->render('connexionAdmin');
            }
        }

        return $this->view->render('connexionAdmin');

    }




}
