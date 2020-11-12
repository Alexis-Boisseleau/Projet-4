
<?php $this->title = 'Administration'; ?>

<?= $this->session->show('add_article'); ?>
<?= $this->session->show('edit_article'); ?>
<?= $this->session->show('delete_article'); ?>
<?= $this->session->show('unflag_comment'); ?>
<?= $this->session->show('delete_comment'); ?>





<div class="container table-responsive">
    <h2>Articles</h2>
    <a href="../public/index.php?route=addArticle" class="btn btn-primary">Nouvel article</a>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <td>Id</td>
                <td>Titre</td>
                <td>Contenu</td>
                <td>Date</td>
                <td>Actions</td>
            </tr>
        </thead>
        <?php
        foreach ($articles as $article)
        {
            ?>
            <tr>
                <td><?= htmlspecialchars($article->getId());?></td>
                <td><a href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId());?>"><?= $article->getTitle();?></a></td>
                <td><?= substr($article->getContent(), 0, 150);?></td>
                <td>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></td>
                <td>
                    <a href="../public/index.php?route=editArticle&articleId=<?= $article->getId(); ?>"  class="btn btn-primary" style="margin-bottom: 5px;">Modifier</a>
                    <a href="../public/index.php?route=deleteArticle&articleId=<?= $article->getId(); ?>"  class="btn btn-danger">Supprimer</a>
                </td>
            </tr>
            <?php
        }
        ?>
    </table>
</div>

<div class="container table-responsive">
    <h2>Commentaires signalés</h2>

    <table class="table table-bordered">
        <tr>
            <td>Id</td>
            <td>Pseudo</td>
            <td>Message</td>
            <td>Date</td>
            <td>Actions</td>
        </tr>
        <?php
        foreach ($comments as $comment)
        {
            ?>
            <tr>
                <td><?= htmlspecialchars($comment->getId());?></td>
                <td><?= htmlspecialchars($comment->getAuthor());?></td>
                <td><?= substr(htmlspecialchars($comment->getContent()), 0, 150);?></td>
                <td>Créé le : <?= htmlspecialchars($comment->getCreatedAt());?></td>
                <td>
                    <a href="../public/index.php?route=unflagComment&commentId=<?= $comment->getId(); ?>" class="btn btn-primary">Désignaler le commentaire</a>
                    <a href="../public/index.php?route=deleteComment&commentId=<?= $comment->getId(); ?>" class="btn btn-danger">Supprimer le commentaire</a>
                </td>
            </tr>
            <?php
        }
        ?>
    </table>
</div>



<a href="../public/index.php" class="btn btn-primary">Retour à l'accueil</a>

