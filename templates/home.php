<?php $this->title = "Accueil"; ?>

<?= $this->session->show('add_article'); ?>
<?= $this->session->show('edit_article'); ?>
<h1 style="text-align: center">Blog jean de la fontaine</h1>

    <a href="../public/index.php?route=addArticle">Nouveaux articles </a>




    <?php
    foreach ($articles as $article)
    {
        ?>
        <div>
            <h2><a href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId());?>"><?= htmlspecialchars($article->getTitle());?></a></h2>
            <p><?= htmlspecialchars($article->getContent());?></p>
            <p><?= htmlspecialchars($article->getAuthor());?></p>
            <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
        </div>
        <br>
        <?php
    }
    ?>






</body>

</html>