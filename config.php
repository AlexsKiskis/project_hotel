<?php
 define("HOST","localhost");
 define("USER","root");
 define("PASS","root");
 define("DB","hotel");

 function initialization(){
    $connect = new mysqli(HOST,USER,PASS,DB);
    $connect->set_charset("utf8");
    if($connect->connect_error)
        exit("нет соединения с БД !");

    return $connect;
 }