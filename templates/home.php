<?php $this->title = "Accueil"; ?>

<?php $this->session->show('not_admin'); ?>





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
        <div class='row no-container' >
<?php
foreach ($articles as $article) {
    ?>


            <div class='col-12  col-md-12 col-lg-3 article' >
                <h2 class="title-article-home"> <a href="../public/index.php?route=article&articleId=<?= $article->getId();?>"><?= htmlspecialchars($article->getTitle()) ;?> </a></h2>
                <div>
                 <p><i class="fas fa-signature" data-placement="center" ></i></p> 
                </div>
                <div class="contenu-home">
                  <?= $article->getContent() ;?>
                </div>
                <div class="datehome">
                  <p >Créé le : <?= htmlspecialchars($article->getCreatedAt());?></p>
                </div>
            </div>

<?php
    }
    ?>
        </div>
    </div>
</div>









