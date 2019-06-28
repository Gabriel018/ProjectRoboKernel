<?php
include "header.php";
include "conexao.php";
?>
<div class="container" id="container">
   <h1> Produtos</h1>
	<div class="row">
		<!--Imagens diretas do banco-->       
<?php
		$sql = "select * from produto";
        $resultado = mysqli_query($conexao, $sql);      
      while ( $dados = mysqli_fetch_assoc($resultado) ) 
	   {  
 ?>
	<div class="col-sm-3">
	<div class="thumbnail">
 <img  style="width:50%;height:12em" src="fotos/<?php echo $dados['imagem'] ?>" <?php echo $dados['imagem'] ?>;>
      <div class="caption text-center">
         <strong>Descrição:<?php echo $dados['descricao'] ?></strong>
                <p><br/><strong>Categoria:</strong>: <?php echo $dados['categoria'] ?><br><br>
				<strong>Preço:</strong>:<?php echo "R$ ";
				echo $dados['preco']?>
               </p>
              </div>
          </div>
         </div>
 <?php 
		 } ?>
     </div>
</div>
 <?php include "footer.php"; ?>