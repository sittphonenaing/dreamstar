<?php
ob_start();
session_start();

if (!isset($_SESSION['id'])){
header('location:index.php');
}

$ses_id = $_SESSION['id'];

?>