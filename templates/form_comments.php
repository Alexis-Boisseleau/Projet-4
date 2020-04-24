<form method="post" action="../public/index.php?route=addComment&articleId=<?= htmlspecialchars($article->getId()); ?>">

    <label for="author">Pseudo</label>
    <input type="text" name="author" id="author"></br>

    <label for="content">Message</label>
    <textarea id="content" name="content"></textarea></br>

    <input type="submit" value="Envoyer" id="submit" name="submit">

</form>
