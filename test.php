<?php
require 'connection.php';

if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    header('location: index.php');
    exit();
}

$query = "SELECT * FROM students WHERE id=:id" ;

$response = $bdd->prepare($query);
$response->execute([
    'id' => $_GET['id']
]);

$data = $response->fetch();


?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <a href='index.php' title='back'>Back</a><br>

    <form action="" method="POST">
        <input type="hidden" name="task" value="carUpdate">
        <input type="hidden" name="id" value="<?= $_GET['id']?>">

        <div>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="<?= $_POST['name'] ?? $data['name'] ?>" autofocus>
            <?php if (!empty($errors['name'])) {?>
                <br><span class='error'><?= $errors['name'] ?></span>
            <?php } ?>
        </div>

        <div>
            <label for="brand">Brand</label>
            <input type="text" id="brand" name="brand" value="<?= $_POST['brand'] ?? $data['brand'] ?>">
            <?php if (!empty($errors['brand'])) {?>
                <br><span class='error'><?= $errors['brand'] ?></span>
            <?php } ?>
        </div>

        <div>
            <label for="selling_price">Selling Price</label>
            <input type="text" id="selling_price" name="selling_price" value="<?= $_POST['selling_price'] ?? $data['selling_price'] ?>">
            <?php if (!empty($errors['selling_price'])) {?>
                <br><span class='error'><?= $errors['selling_price'] ?></span>
            <?php } ?>
        </div>

        <div>
            <label for="purchase_price">Purchase Price</label>
            <input type="text" id="purchase_price" name="purchase_price" value="<?= $_POST['purchase_price'] ?? $data['purchase_price'] ?>">
            <?php if (!empty($errors['purchase_price'])) {?>
                <br><span class='error'><?= $errors['purchase_price'] ?></span>
            <?php } ?>
        </div>

        <div>
            <label for="is_sold">Sold</label>
            <input type="checkbox" id="is_sold" name="is_sold" value="1" <?= isset($_POST['is_sold']) && $_POST['is_sold'] === 1 ? 'checked' : ($data['is_sold'] === 1 ? 'checked' : '') ?>>
        </div>
        <div>
            <input type="Submit" value="Submit">
            
        </div>
    </form>


</body>
</html>