<form method="post" action="../public/index.php?route=addComment&articleId=<?= htmlspecialchars($article->getId()); ?>">

    <label for="pseudo">Pseudo</label>
    <input type="text" name="pseudo" id="pseudo"></br>

    <label for="message">Message</label>
    <textarea id="message" name="message"></textarea></br>

    <input type="submit" value="Envoyer" id="submit" name="submit">

</form>
