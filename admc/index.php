<?php session_start(); ?>
<?php
   if(!isset($_SESSION['cliente']));  
   if(!isset($_SESSION['clientenome']));  
  if(!isset($_SESSION['clientecpf']));   
   if(!isset($_SESSION['clientedtnasc']));
   if(!isset($_SESSION['clientecep']));
   if(!isset($_SESSION['clienteendereco']));
   if(!isset($_SESSION['clientenumero']));
   if(!isset($_SESSION['clientecomplemento']));
   if(!isset($_SESSION['clientebairro']));
   if(!isset($_SESSION['clientecidade']));
   if(!isset($_SESSION['clienteestado']));
   if(!isset($_SESSION['clientetelefone']));
   if(!isset($_SESSION['clientecelular']));
   if(!isset($_SESSION['clienteemail']));
   if(!isset($_SESSION['clientesenha']));
   if(!isset($_SESSION['clienteimagem']));
   
   if(!isset($_SESSION['carrinho']));  
   
?>

<?php include "admin.php" ?>

		  <div class="col-md-10">
		  	<div class="row">
		  		<div class="col-md-12">
		  			<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Bem Vindo Ao Painel de Controle, <?php echo $_SESSION['clientenome']; ?></div>
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
						<p>A área permite controlar todas as informações que são armazenadas no banco de dados</p>
						<p>O Administrador poderá alterar e fazer modificações em seu dados e verificar o que foi repassado pelos seus clientes.</p>
									  			
		  				</div>
		  			</div>
		  		</div>		  		
		  	</div> 	
		  </div>
		</div>
    </div>

<?php include "footer.php" ?>