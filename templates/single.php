
<?php $this->title = "Article"; ?>
<div>

    <div>
        <h2><?= htmlspecialchars($article->getTitle());?></h2>
        <p><?= htmlspecialchars($article->getContent());?></p>
        <p><?= htmlspecialchars($article->getAuthor());?></p>
        <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
    </div>
    <br>
    <a href="../public/index.php">Retour à l'accueil</a>
    <div id="comments" class="text-left" style="margin-left: 50px">
    <a href="../public/index.php?route=editArticle&articleId=<?= $article->getId(); ?>">Modifier</a>
    <a href="../public/index.php?route=deleteArticle&articleId=<?= $article->getId(); ?>">Suprrimer l'article</a>
        <h3>Commentaires</h3>
        <?php include('form_comments.php'); ?>
        <?php
        foreach ($comments as $comment )
        {
            ?>
            <h4><?= htmlspecialchars($comment->getAuthor());?></h4>
            <p><?= htmlspecialchars($comment->getContent());?></p>
            <p>Posté le <?= htmlspecialchars($comment->getCreatedAt());?></p>
            <?php
        }
        ?>
    </div>
</div>

</body>
</html>

