<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $errors = [];

    if (empty($_POST['name'])) {
        $errors['name'] = 'The name field is required!';
        
    }
    if (empty($_POST['last_name'])) {
        $errors['last_name'] = 'The last_name field is required!';
        
    }
    if (empty($_POST['date_naissance'])) {
        $errors['date_naissance'] = 'The field is required!';
        
    }
    if (empty($_POST['email'])) {
        $errors['email'] = 'The email field is required!';
    }

    if (count($errors) === 0) {
        $query = "UPDATE students SET name = :name, last_name = :last_name, date_naissance = :date_naissance, email = :email WHERE id = :id";
        $response = $bdd->prepare($query);
        $response->execute([
            ':name' => $_POST['name'],
            ':last_name' => $_POST['last_name'],
            ':date_naissance' => $_POST['date_naissance'],
            ':email' => $_POST['email'],
            ':id' => $_POST['id']
        ]);

        header('location:index.php');
        exit();
    }
}