<?php
$servidor = 'localhost';
$usuario  = 'root';
$senha 	  = '';
$banco 	  = '';
	try{
	  $conexao = new PDO('mysql:host='.$servidor.';dbname=robokernel', $usuario, $senha);  
	  $conn = new PDO('mysql:host='.$servidor.';dbname=robokernel', $usuario, $senha);  
	}
	catch(PDOException $e){
		echo $e->getMessage();
	}
?>