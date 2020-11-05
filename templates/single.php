
<?php $this->title = "Article"; ?>


<?= $this->session->show('add_comment'); ?>
<?= $this->session->show('flag_comment'); ?>


<div class="container">

        <div>
            <h2 id="titreSingle"><?= htmlspecialchars($article->getTitle()) ;?></h2>
            <p><?=  $article->getContent();?></p>
            <p>Jean Forteroche</p>
            <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
        </div>

        <br>
        <div id="comments" >

            <h3>Commentaires</h3>
            <?php include('form_comments.php'); ?>
            <?php
            foreach ($comments as $comment )
            {
                ?>
                <div id="comment">
                    <p class="h5"><?= htmlspecialchars($comment->getAuthor());?></p>
                    <p id="comment_line"><?= htmlspecialchars($comment->getContent());?></p>
                    <p>Posté le <?= htmlspecialchars($comment->getCreatedAt());?></p>
                </div>


            <?php
            if($comment->isFlag()) {
                ?>
                <p>Ce commentaire a déjà été signalé</p>
                <?php
            } else {
                ?>
                <p><a href="../public/index.php?route=flagComment&commentId=<?= $comment->getId(); ?>" class="btn btn-danger">Signaler le commentaire</a></p>

                <?php
            }

            ?>

            <br>
            <?php
        }
        ?>
        </div>

</div>
<a href="../public/index.php" class="btn btn-primary">Retour à l'accueil</a>

</body>
</html>

