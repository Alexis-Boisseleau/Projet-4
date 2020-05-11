<?php $this->title = "Accueil"; ?>

<?= $this->session->show('add_article'); ?>
<?= $this->session->show('edit_article'); ?>
<?= $this->session->show('delete_article'); ?>
<?= $this->session->show('add_comment'); ?>
<?= $this->session->show('flag_comment'); ?>

<h1 style="text-align: center">Blog jean de la fontaine</h1>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../public/images/img1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../public/images/img2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../public/images/img3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

</div>

<a href="../public/index.php?route=addArticle">Nouveaux articles </a>


<div class='container-fluid'>
    <div class='container'>
        <div class='row'>
<?php
foreach ($articles as $article){
    ?>

            <article class='col-md-3'>
                <h2><a href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId());?>"><?= htmlspecialchars($article->getTitle());?></a></h2>
                <p><?= htmlspecialchars($article->getContent());?></p>
                <p><?= htmlspecialchars($article->getAuthor());?></p>
                 <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
            </article>

<?php
    }
    ?>
        </div>
    </div>
</div>






</body>

</html>