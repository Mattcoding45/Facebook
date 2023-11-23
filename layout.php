<?php
require 'connection.php';
if(isset($_SESSION['islog'])){

}else{
    $_SESSION['islog']=false;
}

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
        <section id="top">
            <nav class="container">
                <div class="home">
                    <img src="assets/img/reseau.png" alt="Logo école" id="top_logo"> 
                    <a href="index.php" title="Accueil">L'école</a>
                </div>
                <?php if($_SESSION['islog']===true) { ?>
                <p>Bonjour <?= $_SESSION['name']?></p>
                <a href="logout.php">Logout</a>
                <?php }else{ ?>    
                <a href="login.php" title="Se connecter" id="login">Se connecter</a>
                <?php } ?>
            </nav>
        </section>
    </header>