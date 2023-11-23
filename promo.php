<?php
require 'connection.php';
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
        
        </header>

        <main>
            <section class="sort">
                <button> Trier par nom <i class="fa-solid fa-arrow-down"></i></button>
                
                <button> Trier par date de naissance <i class="fa-solid fa-arrow-down"></i></button>
                
                <button>Trier par popularité <i class="fa-solid fa-arrow-down"></button></i>
            </section>

            <section>

                <div class="container" id="card_grid">
                    
                    <div class="card">
                        <div class="card_pic">
                            <img src="assets/img/OIG_8.jpg">
                        </div>
                        <?php
                

                foreach ($datas as $data) {
                ?>
                        <div class="">
                        <h2><?= $data['name'] . ' ' . $data['last_name'] ?></h2> 
                        <p><?= $data['email'] ?></p>
                        <p><?= $data['date_naissance'] ?></p>
                            <button type="submit">j'aime</button>
                        </div>
                         <?php } ?>
                    </div> 
                </div>

            </section>
        </main>

        <footer>
        </footer>

    </body>
</html>