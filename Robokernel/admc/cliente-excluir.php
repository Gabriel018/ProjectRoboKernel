
<?php
   if(!isset($_SESSION['cliente']));  
   ?>
<?php 
 $codcliente = $_GET($_SESSION['cliente']); 

   include("conexao.php");
 
    $sql = "DELETE FROM cliente WHERE codcliente = $codcliente";
	$consulta = mysqli_query($conexao, $sql);
	if(mysqli_query($consulta)) {
		$msg = "Excluido com sucesso!";
	}else{
		$msg= "Erro ao excluir!";
	}
//mysqli_close fecha a conexao com o banco de dados
	mysqli_close($conexao);
?>

<?php $title = "Excluir Cliente"; ?>
<?php include "header.php"; ?>

<section class="container">
    <?php echo $msg; ?>
</section>

<?php include "footer.php"; ?>