<?php 

session_start();

if (!isset($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=facebook;charset=utf8','root');
    $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}
require 'controllers/profil.php';