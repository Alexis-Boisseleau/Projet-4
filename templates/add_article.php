<?php $this->title='Nouvel article'; ?>

<div>

    <form method="post" action="../public/index.php?route=addArticle">

        <label for="title">Titre</label><br>
        <input type="text" name="title" id="title"><br>

        <label for="content" >Contenu article</label><br>
        <textarea name="content" id=content ></textarea><br>

        <label for="author">Auteur</label><br>
        <input type="text"  id="author" name="author"><br>

        <input type="submit" value="Envoyer" id="submit" name="submit">

    </form>
    <a href="../public/index.php"></a>
</div>