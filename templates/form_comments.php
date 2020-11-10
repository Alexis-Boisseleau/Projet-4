
<form method="post" action="../public/index.php?route=addComment&articleId=<?= htmlspecialchars($article->getId()); ?>">
    <div class="form-group">

        <label for="author">Pseudo</label>
        <p><input id="author" type="text"  name="author"  class="form-control"></p>
        <?= isset($errors['author']) ? $errors['author'] : ''; ?>

        <label for="content">Message</label>
        <p><textarea id=content name="content" class="form-control"></textarea></p>
        <?= isset($errors['content']) ? $errors['content'] : ''; ?>

        <input type="submit" value="Envoyer" id="submit" name="submit" class="btn btn-primary">
    </div>
</form>

