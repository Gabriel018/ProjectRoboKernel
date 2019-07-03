<?php
require "Restrito.class.php";

$nome = $_POST['nome'];
$restrito = new Restrito();
$dados = $restrito->pesquisarPorNome($nome);

?>

<?php $title = "Listagem de Usuario"; ?>
<?php include "includes/header.php" ?>

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
				                  <th>ID</th>
				                  <th>NOME</th>
				                  <th>EMAIL</th>
				                  <th>TELEFONE</th>
				                  <th>LOGIN</th>
				                  <th>SENHA</th>
				                </tr>
				              </thead>
				               <?php
    
								
								 foreach($dados as $dado => $coluna){
												echo "<tr>";
												echo "<td>".$coluna['id']."</td>"; 
												echo "<td>".$coluna['nome']."</td>";
												echo "<td>".$coluna['telefone']."</td>";
												echo "<td>".$coluna['email']."</td>";
												echo "<td>".$coluna['login']."</td>"; 
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

<?php include "includes/footer.php" ?>