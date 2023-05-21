<?php

require_once '../config.php';

$conntact = initialization();

$login = $_POST['login'];
$password = $_POST['password'];
$repeatPassword = $_POST['repeatPassword'];

$sql = "SELECT *
FROM `users` 
WHERE '$login' = users.login";

$checkLogin = mysqli_query($conntact,$sql);

if(mysqli_num_rows($checkLogin) > 0){
    echo "Такой логин уже есть";
    die();
}

if($repeatPassword != $password){
    echo "не совпадают пароли";
    die();
}


$insertSQL = "INSERT INTO `users`(`login`,`password`) VALUES ('$login','$password')";
$pushUser = $conntact->query($insertSQL);

if($pushUser) echo "вы зарегестрированны";
else echo "регситрация не прошла";