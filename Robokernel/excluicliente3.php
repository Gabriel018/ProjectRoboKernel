<?php
$codcliente= $_POST["codcliente"];
$r = $_POST["resp"];
if ($r == "N")
   header("Location: excluicliente.php");
else if($r == "S"){
   include("conexao.php");
   $sql = "DELETE FROM cliente WHERE codcliente = $codcliente";
	mysqli_query($conexao, $sql);
}
?>
<fieldset><legend>Cliente Excluído</legend>
<p>O cliente  <?php echo $codcliente; ?> foi excluído com sucesso.</p>
<hr color="#CCCCCC" size="1" />
<a href="excluicliente.php">Consultar outro cliente para excluir</a>
</fieldset>

