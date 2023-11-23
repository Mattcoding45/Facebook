<?php
require './layout.php';

$query = "SELECT * FROM promos";
$response = $bdd->query($query);
$datas = $response->fetchAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cabin&family=Kaushan+Script&family=Roboto&family=Shadows+Into+Light&display=swap" rel="stylesheet">
</head>
<body>
    <header>
    <section id="sec">
            <div class="container">
                <h1>L'école</h1>
            </div>
        </section>
    </header>
    <main>
        <section class="container">
            <div class="promo_links">
            <?php
                    $query = "SELECT * FROM promos";
                    $response = $bdd->query($query);
                    $datas = $response->fetchAll();

                    foreach ($datas as $data) {
                    ?>
        <div class="promo_card">
            <a href='promo.php?id=<?= $data['id'] ?>'><?= $data['nom_promo'] ?></a>
            <h2><?= $data['date_promo'] ?></h2>

        </div>
    <?php } ?>
        </section>
    </main>

    <footer>
        
    </footer>
</body>
</html>