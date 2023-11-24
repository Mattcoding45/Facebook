<?php
require './layout.php';

if (!empty($_GET['id']) && is_numeric($_GET['id'])) {
    $query = "SELECT * FROM students WHERE promo_id = " . $_GET['id'];
    $response = $bdd->query($query);
    $datas = $response->fetchAll();
} else {
    header('Location: index.php');
}

?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="assets/style.css">
        <link rel="stylesheet" href="assets/promo.css">
        <title>Promo</title>
    </head>
    
    <body>
    
        <header>
        <section id="sec">
            <div class="container">
                <h1>promo</h1>
            </div>
        </section>
        </header>

        <main>
            <section class="sort">
                <button> Trier par nom <i class="fa-solid fa-arrow-down"></i></button>
                
                <button> Trier par date de naissance <i class="fa-solid fa-arrow-down"></i></button>
                
                <button>Trier par popularité <i class="fa-solid fa-arrow-down"></button></i>
            </section>

            <section>

                <div class="container" id="card_grid">
                <?php foreach ($datas as $data) { ?>
                    <div class="card">
                        <div class="card_pic">
                            <img src="assets/img/OIG_8.jpg">
                        </div>
                        <div class="card_content">
                        <h2><?= $data['name'] . ' ' . $data['last_name'] ?></h2>
                        <?php if($_SESSION['islog']===true){ ?>
                            <p><?= $data['email'] ?></p>
                        <?php } ?>
                        <p><?= $data['date_naissance'] ?></p>
                            <button type="submit">j'aime</button>
                            <a href='user_profil.php?id=<?= $data['id'] ?>'>Modifier</a>
                        </div>
                    </div> 
                    <?php } ?>
                </div>
            </section>
        </main>

        <footer>
        </footer>

    </body>
</html>