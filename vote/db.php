<?php
$dsn="mysql:host=localhost;charset=utf8;dbname=vote";
// $dsn="mysql:host=localhost;charset=utf8;dbname=s1120213";
$pdo=new PDO($dsn, 'root', '');
// $pdo=new PDO($dsn, 's1120213', 's1120213');

date_default_timezone_set("Asia/Taipei");

session_start();

$msg=[
    1=>"本調查為會員限定，請登入後再進行投票",
    2=>"本調查已結束，請進行其它調查"
];
