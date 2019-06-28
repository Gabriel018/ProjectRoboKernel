<?php
include("conexao.php");
$codcliente = $_POST["codcliente"];
$sql = "SELECT * FROM cliente WHERE codcliente = $codcliente";
$consulta = mysqli_query($conexao, $sql);
if (mysqli_num_rows($consulta) == 0) {
?>
<p>O código do cliente <?php echo $codcliente; ?> não foi
 encontrado.</p>
<?php
}else {
   $linha = mysqli_fetch_array($consulta);
   $codcliente = $linha["codcliente"];
   $nome = $linha["nome"];
   $email = $linha["email"];
   $senha = $linha["senha"];
 ?>
<table border="1" width="100%">
<tr> 
<th>Código Cliente</th>
<th>Nome</th>
<th>E-mail</th>
  <th>Senha</th> 
  </tr>
  <tr>  
<td><?php echo $codcliente; ?></td>
<td><?php echo $nome; ?></td>
<td><?php echo $email; ?></td>
<td><?php echo $senha; ?></td>
</tr></table>
<br />
<hr color="#CCCCCC" size="1" />
<form method="POST" action="excluicliente3.php">
Tem certeza que deseja excluir o cliente acima?<br />
<input type="radio" name="resp" value="N" checked="true" />NÃO
<input type="radio" name="resp" value="S" />SIM
<input type="hidden" name="codcliente" value="<?php echo $codcliente; ?>" />
<input type="submit" value="Excluir Cliente" />
</form>
<?php
}
?>
<br /><hr color="#CCCCCC" size="1" />
<a href="excluicliente.php" class="btn-success">Consultar outro Cliente para excluir</a>
</fieldset>

