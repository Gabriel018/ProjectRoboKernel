<?php
include ('header.php');
include ('conexao.php');
$codproduto = $_REQUEST['codproduto'];
$sql = "select * from produto where codproduto=$codproduto";
$resultado = mysqli_query($conexao, $sql);
$dados = mysqli_fetch_array($resultado);
 ?>
<hr>
<section class="container">

   <div class="row">
  <div class="col-lg-4 col-md-12">
    <img  style="width:40%;height:20em;" src="fotos/<?=$dados['imagem']; ?>" alt="imagem" class="w-75 h-75">
  </div>
<div class="info col-lg-8 col-md-12">
    <div class="titulo">
       <h3><?= $dados['descricao']; ?></h3>
</div>

<div class="genero">
 <b>Categoria:</b> <?=$dados['categoria'];?>
</div>
<div class="preco">
<b>Preço: </b> R$  <?=$dados['preco']; ?>
</div>
<div class="compra">
  <div class="botao">
  <a class="btn btn-primary" href="carrinho.php?acao=add&codproduto=<?php echo $dados['codproduto']?>" >Comprar</a>
  </div>
  </div>
</div>
</div>
</section>
<hr>
<?php include "footer.php";?>

