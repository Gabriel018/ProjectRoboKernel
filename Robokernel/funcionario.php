<!DOCTYPE html>
<html lang="pt">
<head>
  <title>Cadastro de Funcionário</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Cadastro de Funcionário</h2>
  <form action="gravarfuncionario.php" method="post">
    <div class="form-group">
      <label for="nome">Nome:</label>
      <input type="text" class="form-control" id="nome" placeholder="Nome" name="nome">
    </div>
	
<div class="form-group">
<label for="email">E-mail:</label>
<input type="email" class="form-control" id="email" placeholder="E-mail" name="email"></div>

<div class="form-group">
<label for="senha">Senha:</label>
<input type="password" class="form-control" id="senha" placeholder="Senha" name="senha"></div>



<button type="submit" class="btn-primary">Cadastrar</button>
<button type="reset" class="btn-primary">Limpar</button>
</form>
</div>
<script src="js/cep.js" type="text/javascript"></script>
<?php include "footer.php"; ?>







