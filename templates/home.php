<?php $this->title = "Accueil"; ?>


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../public/images/img1.jpg" alt="paysage alaska">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../public/images/img2.jpg" alt="paysage alaska">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../public/images/img3.jpg" alt="paysage alaska">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev" id="button-prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

</div>



<div class='container-fluid'>
    <div class='container'>
        <div class='row' >
<?php
foreach ($articles as $article) {
    ?>

            <div id="article" class='col-md-3 col-xs-12 col-sm-4' >
                <h2 class="title-article-home"><a href="../public/index.php?route=article&articleId=<?= htmlspecialchars($article->getId());?>"><?= $article->getTitle();?></a></h2>
                <i class="fas fa-signature" data-placement="center" ></i>
                <div class="contenu-home">
                  <p><?= $article->getContent();?></p>
                </div>
                <p class="author-home"><?= $article->getAuthor();?></p>
                <p>Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
            </div>

<?php
    }
    ?>
        </div>
    </div>
</div>






</body>

</html>