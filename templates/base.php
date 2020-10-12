
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <title><?= $title ?></title>
    <link rel="stylesheet" href="../public/css/projet-4.css">
    <link rel="stylesheet" href="../public/css/bootstrap.min.css">
    <link rel="stylesheet" href="../public/css/fontawesome/css/fontawesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script type="text/javascript" src="../public/js/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="../public/js/tinymce/tinymce-init.js"></script>
    <script type="text/javascript" src="../public/js/mdp.js"></script>
</head>
<body>
    <header ><h1>Blog Jean Forteroche</h1></header>
    <div id="content">
        <?= $content ?>
    </div>

    <footer>
        <p>Jean Forteroche site Web </br> Tous droits réservés</p>

            <a href="../public/index.php?route=connexionAdmin" class="btn btn-link" >Administration</a>
        <div id="social">
            <i class="fab fa-twitter-square"></i>
            <i class="fab fa-facebook-square"></i>
            <i class="fab fa-instagram-square"></i>
        </div>

    </footer>

</body>

</html>