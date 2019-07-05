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
<?php
$n1 = $_POST['n1'];
$n2 = $_POST['n2'];
$md = ($n1+$n2)/2;
	if ($md>=7){
	$msg = "aprovado";
		}else{
		if ($md<5){
			$msg = "reprovado";
		}else{
			$msg = "recuperação";
		}
	}
	echo $msg;
	echo "<br>";
	echo "Média:";
	echo $md;
?>
</div>
</body>
</html>