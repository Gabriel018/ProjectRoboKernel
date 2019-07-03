<?php
include 'conexao.php';
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];


$sql = "insert into funcionario values(null,'".$nome."','".$email."','".$senha."')";
//mysqli_query serve para consultar se a informação foi gravada no bd
	if(mysqli_query($conexao, $sql)) {
		echo "Cadastrado com sucesso!";
	}else{
		echo "Erro ao gravar!";
	}
//mysqli_close fecha a conexao com o banco de dados
	mysqli_close($conexao);
?>

