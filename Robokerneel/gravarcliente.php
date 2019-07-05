<?php
include 'conexao.php';
$nome = $_POST['nome'];
$cpf = $_POST['cpf'];
$dtnasc = $_POST['dtnasc'];
$cep = $_POST['cep'];
$endereco = $_POST['endereco'];
$numero = $_POST['numero'];
$complemento = $_POST['complemento'];
$bairro = $_POST['bairro'];
$cidade = $_POST['cidade'];
$estado = $_POST['estado'];
$telefone = $_POST['telefone'];
$celular = $_POST['celular'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$imagem = $_POST['imagem'];

$sql = "insert into cliente values(null,'".$nome."','".$cpf."','".$dtnasc."','".$cep."','".$endereco."','".$numero."','".$complemento."','".$bairro."','".$cidade."','".$estado."','".$telefone."','".$celular."','".$email."','".$senha."','".$imagem."')";
//mysqli_query serve para consultar se a informação foi gravada no bd
	if(mysqli_query($conexao, $sql)) {
		echo "Cadastrado com sucesso!";
	}else{
		echo "Erro ao gravar!";
	}
//mysqli_close fecha a conexao com o banco de dados
	mysqli_close($conexao);
?>

