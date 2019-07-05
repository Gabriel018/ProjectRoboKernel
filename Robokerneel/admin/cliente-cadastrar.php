<?php

// para mostrar os erros (padrão)
ini_set('display_errors', 1);
ini_set('log_errors', 1);
error_reporting(E_ALL);

try{
    
	if($_SERVER['REQUEST_METHOD'] != 'POST')
    header("Location: form-cliente.php");
    
   // Variáveis ligando ao formulário
$nome = $_POST['nome'];
    if($nome=="") throw new Exception("nomeInválido!");
    
$cpf = $_POST['cpf'];
    if($cpf=="") throw new Exception("cpfInválido!");

$dtnasc = $_POST['dtnasc'];
    if($dtnasc=="") throw new Exception("dtnascInválido!");

$cep = $_POST['cep'];
    if($cep=="") throw new Exception("cepInválido!"); 

$endereco = $_POST['endereco'];
    if($endereco=="") throw new Exception("enderecoInválido!");

$numero = $_POST['numero'];
    if($numero=="") throw new Exception("numeroInválido!");
    
$complemento = $_POST['complemento'];
    if($complemento=="") throw new Exception("complementoInválido!");

$bairro = $_POST['bairro'];
    if($bairro=="") throw new Exception("bairroInválido!");
    
$cidade = $_POST['cidade'];
    if($cidade=="") throw new Exception("cidadeInválido!");
    
$estado = $_POST['estado'];
    if($estado=="") throw new Exception("estadoInválido!");

$telefone = $_POST['telefone'];
    if($telefone=="") throw new Exception("telefoneInválido!");

$celular = $_POST['celular'];
    if($celular=="") throw new Exception("celularInválido!");
    
$email = $_POST['email'];
    if($email=="") throw new Exception("emailInválido");
	
$senha = $_POST['senha'];
    if($senha=="") throw new Exception("senhaInválida");




	
	
	
	
   
// inclue a conexao e faz a instancia (padrão) // 
require_once "Cliente.class.php";

    $cliente = new Cliente(); 
    $cliente->nome = $nome;
    
    $cliente->cpf = $cpf;

    $cliente->dtnasc = $dtnasc;

    $cliente->cep = $cep;

    $cliente->endereco = $endereco;

    $cliente->numero = $numero;

    $cliente->complemento = $complemento;

    $cliente->bairro = $bairro;

    $cliente->cidade = $cidade;

    $cliente->estado = $estado;

    $cliente->telefone = $telefone;

    $cliente->celular = $celular;

	$cliente->email = $email;
   
    $cliente->senha = $senha;

    

    
    $cliente->inserir();    	
	
    
   
    $msg = "Cadastrado com sucesso";

}catch(PDOException $e){
    $msg = "Contate o administrador";   
    echo $e->getMessage();
}catch(Exception $e){
    $msg = $e->getMessage();
}

?>
    
    


<?php $title ="Cadastro"; ?>

<section class="container">
    
    <?php header("location:index.php"); ?>
        
</section>


    
	
	
	