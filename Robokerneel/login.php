<?php
session_start();
?>

<?php  include ('header.php'); ?>
<hr>


<div class="container fundo-login">
	<br><br><br>
	<div class="form-group">
	<img src="./img/avatar.png" class="avatar" alt="">
		<h1 class="logh1">Login</h1>
		
		<form name="formlogin" method="post" action="admc/fazlogin.php">
		<p>Email:</p><br> <input type="email" placeholder="Digite o seu e-mail" name="email">
		<br>
		<p>Senha:</p><br> <input type="password" placeholder="Digite o sua senha"  name="senha">
	<br><br>
	<input type="submit" value="Login" class="btn-success">
	<input type="reset" value="Limpar" class="btn-danger">
	
	</form>
	</div>
</div>