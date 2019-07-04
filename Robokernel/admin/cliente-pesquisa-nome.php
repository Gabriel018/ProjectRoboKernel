<?php
require "Cliente.class.php";

$nome = $_POST['nome'];
$cliente = new Cliente();
$dados = $cliente->pesquisarPorNome($nome);

?>

<?php $title = "Listagem de Clientes"; ?>
<?php require "includes/header.php" ?>

   <section class="container">
        <h1>Pesquisa por: <?php echo $nome; ?></h1>
        
        <?php if(isset($dados)){ ?>
       <div class="col-md-10">

		  	<div class="row">
  				<div class="col-md-10">
  					
		
		  				<div class="panel-body">
		  					<table class="table">
				              <thead>
				                <tr>
				                  <th>COD CLIENTE</th>
				                  <th>NOME</th>
				                  <th>EMAIL</th>
				                  <th>SENHA</th>
				                </tr>
				              </thead>
				               <?php
    
								
								 foreach($dados as $dado => $coluna){
												echo "<tr>";
												echo "<td>".$coluna['codcliente']."</td>"; 
												echo "<td>".$coluna['nome']."</td>";
												echo "<td>".$coluna['email']."</td>";
												echo "<td>".$coluna['senha']."</td>";
												echo "</tr>";
											
											}
											
											
								?>
								
								
								   <?php } ?>
				            </table>
		  				</div>
		  			</div>
  				</div>
  			</div>
    </section>

<?php require "includes/footer.php" ?>