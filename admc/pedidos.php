
<?php session_start(); ?>
<?php
	if(!isset($_SESSION['cliente'])); 
   if(!isset($_SESSION['clientenome']));  
   if(!isset($_SESSION['carrinho']));  
?>

	
<?php require "admin.php" ?>


<div class="col-md-10">
		  	<div class="row">
		<div class="col-md-12">
		  			<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">
				  <h1>Dados do Cliente</h1>
				  <?php echo $_SESSION['clientenome']; ?>,?
			</div>

	<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  	<div class="panel-body">
<table class="table table-strip">

       
		<thead>
			<tr>
				<th width="244">DESCRIÇÃO</th>
				<th width="244">CATEGORIA</th>
				<th width="244">PREÇO</th>
				<th width="244">SUBTOTAL</th>
				<th width="244">REMOVER</th>
			</tr>
		</thead>
		
			<form action="?acao=finalizar" method="post">
		
				
		
				
		<tbody>
			<?php
		
			
			
				if(count($_SESSION['carrinho']) & ($_SESSION['clientenome']) == 0){
					
					echo('<tr><td colspan="5">Nenhum produto no carrinho</td></tr>');
					
				}else{
					 
						include('conexao.php'); 
						$total = 0;
									
						$sql     = "SELECT * FROM produto WHERE codproduto = '$codproduto'";
						$executa = mysqli_query($conexao, $sql) or die (mysqli_error());
						$in      = mysqli_fetch_assoc($executa);
						
						$descricao    = $in ['descricao'];
						$preco   = number_format ($in ['preco'], 2,',','.');
						$sub     = number_format ($in ['preco'] * $qtd, 2,',','.');
						$total   += $in['preco'] * $qtd;
											

	$sql22 = "insert into pedido values (null,'".$codcliente."', '".$codproduto."','".$qtd."','".$sub."', '".$total."')";
						$executa = mysqli_query($conexao, $sql22);
						$gravar = mysqli_query($executa);
					
//Apos gravar no banco, "zera" o carrinho
//$_SESSION['carrinho'] = array();
		
						
						echo '<tr>
				
								<td>'.$descricao.'</td>
                                
								<td><input type="text" size="3" name="codproduto['.$codproduto.']" value="'.$qtd.'" ></td>
                                
								<td>R$ '.$preco.'</td>
                                
								<td>R$'.$sub.'</td>
                                
								<td><a href="?acao=del&codproduto='.$codproduto.'" class="btn btn-danger">Remover</td>

							  </tr>' ;
					
					
						$total = number_format($total, 2, ',', '.');
                echo 	'<tr>                         
                            <td colspan="4">Total</td>
                            <td>R$ '.$total.'</td>
                    	</tr>';
				
			}
			?>
		          <td ><input class="btn btn-primary"  type="submit" value="finalizar"/></td>
                
			
			
	
		</tbody>
			
			</form>
		
	</table>
</div>
</body>
</html>