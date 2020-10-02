
<form method="post" action="../public/index.php?route=addComment&articleId=<?= htmlspecialchars($article->getId()); ?>">
    <div class="form-group">
        <label for="author">Pseudo</label>
        <input type="text" name="author" id="author" class="form-control"></br>

        <label for="content">Message</label>
        <textarea id="content" name="content" class="form-control"></textarea></br>

        <input type="submit" value="Envoyer" id="submit" name="submit" class="btn btn-primary">
    </div>
</form>

