
<?php
$route = isset($post) && $post->get('id') ? 'editArticle&articleId='.$post->get('id') : 'addArticle';
$submit = $route === 'addArticle' ? 'Envoyer' : 'Mettre à jour';
?>
<div class="container-fluid">

    <form method="post" action="../public/index.php?route=<?= $route; ?>" >

        <div class="form-group">

            <label for="title">Titre</label><br>
            <input type="text" id="title" name="title"  class="tinymce" value="<?= isset($post) ? htmlspecialchars($post->get('title')): ''; ?>"><br>
            <?= isset($errors['title']) ? $errors['title'] : ''; ?>

            <label for="content">Contenu</label><br>
            <textarea id="content" name="content" class="tinymce" ><?= isset($post) ? htmlspecialchars($post->get('content')): ''; ?></textarea><br>
            <?= isset($errors['content']) ? $errors['content'] : ''; ?>

            <label for="author">Auteur</label><br>
            <input type="text" id="author" name="author" class="tinymce" value="<?= isset($post) ? htmlspecialchars($post->get('author')): ''; ?>"><br>
            <?= isset($errors['author']) ? $errors['author'] : ''; ?>

            <input class="btn btn-primary" type="submit" value="<?= $submit; ?>" id="submit" name="submit">

            </div>

    </form>

    

</div>