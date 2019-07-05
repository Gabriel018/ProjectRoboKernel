<?php
    require_once "Cliente.class.php";
    $cliente = new Cliente ();
    $dados = $cliente->lista();
?> 

<?php $title = "Listagem de Clientes"; ?>
<?php require "includes/header.php" ?>

<div class="col-md-10">
		  	<div class="row">
		<div class="col-md-12">
		  			<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">
				  <h1>Listagem de Clientes</h1>
			</div>
			
			
			<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  	<div class="panel-body">
      <?php if($dados==null){ ?>
            <p>Nenhum cliente cadastrado</p>
        
        <?php } else{ ?>
        
        <table class="lista-dados">
        
		   <div class="col-md-10">

		  	<div class="row">
  				<div class="col-md-6">
		  				<div class="panel-body">
		  					<table class="table">
				              <thead>
				                <tr>
				                  <th>ID CLIENTE</th>
				                  <th>NOME</th>
				                  <th>E-MAIL</th>
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
												
												echo '<td>  <a href="visualizar-cliente.php?codcliente='.$coluna['codcliente'].  "&nome=" . $coluna['nome'] . "&email=" . $coluna['email'] . "&senha=" . $coluna['senha'] . '"> <input type="submit" class="btn btn-primary"  value="Visualizar"/>
				<a href="cliente-excluir.php?codcliente='.$coluna['codcliente'].'"> <input type="submit" class="btn btn-danger"  value="Excluir"/></a></td>';
												echo "</tr>";
											}
											
											
								?>
								
								
								   <?php } ?>
				            </table>
		  				</div>
		  			</div>
  				</div>
  			</div> 

		  			</div>
		  		</div>		  		
		  	</div> 	
		  </div>
		</div>
    </div>
	</section>			
 </section>

  <?php require "includes/footer.php" ?>
    