<!DOCTYPE html>
<html lang="pt">
<head>
  <title>Calcular Média</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Média</h2>
  <form action="md.php" method="post">
    <div class="form-group">
      <label for="n1">Nota 1:</label>
      <input type="text" class="form-control" id="n1" placeholder="digite a nota 1" name="n1">
    </div>
	<div class="form-group">
      <label for="n2">Nota 2:</label>
      <input type="text" class="form-control" id="n2" placeholder="digite a nota 2" name="n2">
    </div>  
    <button type="submit" class="btn-primary">Calcular Média</button>
  </form>
</div>

</body>
</html>
