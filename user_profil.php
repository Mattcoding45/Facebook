<?php

require "./layout.php";

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

if (!empty($_FILES['avatar']['tmp_name'])) {
    $maxFileSize = 200 * 1024;
    if ($_FILES['avatar']['size'] > $maxFileSize) {
        $errors[] = "La taille de l'avatar ne peut dépasser 200 Ko.";   
    }
}
if (isset($_FILES['avatar']) AND $_FILES['avatar']['error'] == 0) {
    if ($_FILES['avatar']['size'] <=1000000) { 
        $infosFichier = pathinfo($_FILES['avatar']['name']);
        $extension_upload = $infosFichier['extension'];
        $extensions_autorisees = array('jpg', 'jpeg', 'png');
        if (in_array($extension_upload, $extensions_autorisees))
        {
            move_uploaded_file($_FILES['avatar']['tmp_name'], 'assets/'.basename($_FILES['avatar']['name']));
        }
    }
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
               
            <form action="" method="POST">
        <input type="hidden" name="task" value="profilUpdate">
        <input type="hidden" name="id" value="<?= $_GET['id']?>">
                    
                    <h1>Profil</h1>
                    <!-- <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia nemo voluptate minus?</p> -->
                
                    <div class="student_info">
            <label for="name">Name :</label>
            <input type="text" id="name" name="name" value="<?= $_POST['name'] ?? $data['name'] ?>" autofocus style="padding: 5px">
            <?php if (!empty($errors['name'])) {?>
                <br><span class='error'><?= $errors['name'] ?></span>
            <?php } ?>
        </div>
                        
        <div class="student_info">
            <label for="last_name">Nom de famille :</label>
            <input type="text" id="last_name" name="last_name" value="<?= $_POST['last_name'] ?? $data['last_name'] ?>" autofocus style="padding: 5px">
            <?php if (!empty($errors['last_name'])) {?>
                <br><span class='error'><?= $errors['last_name'] ?></span>
            <?php } ?>
        </div>
                    
        <div class="student_info">
            <label for="date_naissance">Date de naissance :</label>
            <input type="text" id="date_naissance" name="date_naissance" value="<?= $_POST['date_naissance'] ?? $data['date_naissance'] ?>" autofocus style="padding: 5px">
            <?php if (!empty($errors['date_naissance'])) {?>
                <br><span class='error'><?= $errors['date_naissance'] ?></span>
            <?php } ?>
        </div>

        <div class="student_info">
            <label for="email">Email :</label>
            <input type="text" id="email" name="email" value="<?= $_POST['email'] ?? $data['email'] ?>" autofocus style="padding: 5px">
            <?php if (!empty($errors['email'])) {?>
                <br><span class='error'><?= $errors['email'] ?></span>
            <?php } ?>
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