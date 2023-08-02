<?php
include_once"../db.php";



$pdo ->exec("delete from `members` where `id`= '{$_GET['id']}'");


header('location:../backend.php?do=super');

