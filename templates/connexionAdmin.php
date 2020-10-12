<?php $this->title= "connexion administration" ?>

<?= $this->session->show('error_admin'); ?>



<form method="post" action="../public/index.php?route=connexionAdmin">
    <div class="form-group">
        <label for="pseudo">Pseudo</label>
        <input type="text" name="pseudo" id="pseudo" class="form-control"></br>

        <label for="password">Mot de passe</label>
        <input  type="password" id="password" name="password" class="form-control"></br>

        <input type="submit" value="Connexion" id="submit" name="submit" class="btn btn-primary">
    </div>
</form>

<a href="../public/index.php" class="btn btn-primary">Retour à l'accueil</a>
