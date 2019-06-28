<?php
        include ('header.php');
?>
  
<?php
    include('conexao.php');
    $pagina = (isset($_GET['pagina']))? $_GET['pagina'] : 1;
	if(!isset($_GET['pesquisar'])){
	header("Location: comprar.php");
	}else{
	$valor_pesquisar = $_GET['pesquisar'];
	} 
    $result_sql = "SELECT * FROM produto WHERE categoria LIKE '%$valor_pesquisar%'";
    $resultado = mysqli_query($conexao, $result_sql);
    $total_produto = mysqli_num_rows($resultado);
    $quantidade_pg = 6;
    $num_pagina = ceil($total_produto/$quantidade_pg);
    $inicio = ($quantidade_pg*$pagina)-$quantidade_pg;
    $result_sqls = "SELECT * FROM produto WHERE categoria LIKE '%$valor_pesquisar%' limit $inicio, $quantidade_pg";
    $resultados = mysqli_query($conexao, $result_sqls);
    $total_produto = mysqli_num_rows($resultados);
?>
<section >
    <div class="container theme-showcase" role="main">
    <div class="page-header">
        <div class="row">
            <div class="col-sm-6 col-md-6">
                <h1>Produto</h1>
            </div>    
        <div class="col-sm-6 col-md-6">
		<br><br>
<form class="form-inline" method="GET" action="pesquisar.php">
				<div class="form-group">
<label for="exampleInputName2">Pesquisar</label>
<input type="text" name="pesquisar" class="form-control" id="exampleInputName2" placeholder="Digitar...">
				</div>
    <button type="submit" class="btn btn-primary">Pesquisar</button>
						</form>
					</div>
        </div>
    <br><br>
    <div class="row"> 
        <?php while ( $dados = mysqli_fetch_assoc($resultados) ) { ?>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="fotos/<?= $dados['imagem']; ?> "style="height:120px;width:50%;">
                <div class="caption text-center">
                    <h3><?php echo $dados['descricao']; ?> </h3>

                    <p> <?php echo $dados['categoria']; ?></p>
		<input type="hidden" id="postId" name="postId" value="<?= $dados['codproduto']; ?>">
 <p> <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>" class="btn btn-primary" role="button">
 Compra</a></p>
		</div>
            </div>
        </div>
    <?php } ?>  
	</div>
    <?php
       $pagina_anterior = $pagina - 1;
	   $pagina_posterior = $pagina + 1;
    ?>   
    <nav>
     <ul class="pagination">
      <li class="page-item">
     <?php
		if($pagina_anterior != 0){ ?>     
      <a class="page-link" href="pesquisar.php?pagina=<?php echo $pagina_anterior; ?>&pesquisar=<?php echo $valor_pesquisar; ?>" aria-label="Previous">
     <span aria-hidden="true">&laquo;</span>
     </a>
      <?php }else{ ?>
        <span class="sr-only">Previous</span>
      <?php }  ?>
     </li>
	<?php 
	//Apresentar a paginacao
	for($i = 1; $i < $num_pagina + 1; $i++){ ?>
	<li><a href="pesquisar.php?pagina=<?php echo $i; ?>&pesquisar=<?php echo $valor_pesquisar; ?>"><?php echo $i; ?></a></li>
	<?php } ?>
	<?php
if($pagina_posterior <= $num_pagina){ ?>
     <li class="page-item">  
 <a href="pesquisar.php?pagina=<?php echo $pagina_posterior; ?>&pesquisar=<?php echo $valor_pesquisar; ?>" aria-label="Next">
 <span aria-hidden="true">&raquo;</span>
 </a>
 <?php }else{ ?>
  <span class="sr-only">Next</span>
 <?php }  ?>
 </li>
 </ul>
</nav>
</div>
  
</div>
 </section>
    <hr>
<?php include "footer.php";?>
<?php
 $sqls = "SELECT * FROM produto WHERE categoria LIKE '%$valor_pesquisar%' limit $inicio, $quantidade_pg";
$resultados = mysqli_query($conexao, $sqls);
$total_produto = mysqli_num_rows($resultados);
?>












