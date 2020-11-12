
<?php
$route = isset($post) && $post->get('id') ? 'editArticle&articleId='.$post->get('id') : 'addArticle';
$submit = $route === 'addArticle' ? 'Envoyer' : 'Mettre à jour';
?>
<div class="container-fluid">

    <form method="post" action="../public/index.php?route=<?= $route; ?>" enctype="multipart/form-data" >

        <div class="form-group">

            <label for="title">Titre</label>
            <p><input type="text" id="title" name="title"   value="<?= isset($post) ? htmlspecialchars($post->get('title')): ''; ?>"></p>
            <?= isset($errors['title']) ? $errors['title'] : ''; ?>

            <label for="content">Contenu</label>
            <p><textarea id="content" name="content" class="tinymce" ><?= isset($post) ? htmlspecialchars($post->get('content')): ''; ?></textarea></p>
            <?= isset($errors['content']) ? $errors['content'] : ''; ?>


           <p><input class="btn btn-primary" type="submit" value="<?= $submit; ?>" id="submit" name="submit"></p>


        </div>

    </form>


</div>