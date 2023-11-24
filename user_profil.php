<?php

require "./layout.php";

if (!empty($_GET['id']) && is_numeric($_GET['id'])) {
    $query = "SELECT * FROM students WHERE id = " . $_GET['id'];
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
    <title>Facebook</title>
    <link rel="stylesheet", href="assets/user_profil.css">
</head>
<body>
    <header>
    <section id="sec">
            <div class="container">
                <h1>Mon profil</h1>
            </div>
        </section>

    </header>

    <main>
        
        <section class="container">

            <div class="profil">
               
                <form action="">
                    
                    <h1>Profil</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia nemo voluptate minus?</p>
                
                    <div class="student_info">
                        <label for="">nom
                            <input type="name" name="name">
                        </label>
                    </div>
                        
                    <div class="student_info">
                        <label for="">prénom
                            <input type="lastnamee">
                        </label>
                    </div>
                    
                    <div class="student_info">
                        <label for="">date d'anniversaire
                            <input type="text">
                        </label>
                    </div>

                    <div class="student_info">
                        <label for="">adresse mail
                            <input type="email">
                        </label>
                    </div>

                    <div class="student_info">
                        <label for="">Avatar
                            <input type="file" id="" name="avatar" >
                        </label>
                    </div>

                        <button type="submit">Sauvegarder</button>
                </form>
            </div>

            <div class="pass">
                
                
                <form action="">
                <h2>Mot de passe</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque eius libero deleniti.</p>
                
                    <div class="student_info">
                        <label for=""> mot de passe
                            <input type="password">
                        </label>
                    </div>
                    
                    <div class="student_info">
                        <label for=""> nouveau mot de passe
                            <input type="password">
                        </label>
                    </div>
                        
                    <div class="student_info">
                        <label for=""> confirmation du mot de passe
                            <input type="password">
                        </label>
                    </div>

                    <button type="submit">Confirmer</button>
                </form>
            </div>

        </section>

        <section>
            <div>

            </div>
        </section>
    </main>

    <footer>

    </footer>

</body>
</html>