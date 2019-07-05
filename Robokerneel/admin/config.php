<?php
try {
    $host = 'localhost;charset=utf8';
   
    $user = 'root';
    $pass = '';
    $dbh = new PDO('mysql:host='.$host.';dbname=robokernel', $user, $pass);
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>
