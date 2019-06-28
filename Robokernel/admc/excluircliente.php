<?php
include('conexao.php');

$codcliente = $_REQUEST['cliente'];
echo $codcliente;
$sql = "delete from cliente where codcliente=$codcliente";

$resultado = mysqli_query($conexao, $sql);

if ($resultado==0){
	
   echo "Não foi possível excluir";
   
}else{
	 echo "Excluido com sucesso";
   header("Location: listacliente.php");
}


?>