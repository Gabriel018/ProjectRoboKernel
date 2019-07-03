
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
   
?>
<?php require "admin.php"; 
include('conexao.php');?>
<div class="col-md-10">
	<div class="row">
	<div class="col-md-12">
	<div class="content-box-large">
	<div class="panel-heading">
	<div class="panel-title">
	<h1>Dados do Cliente</h1>
		Seu código de Cliente é  <?php echo $_SESSION['cliente']; ?>
	
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
				<th width="50">NOME</th>
				<th width="10">CPF</th>
				<th width="15">Nascimento</th>
				<th width="12">CEP</th>
				<th width="40">Endereço</th>
				<th width="13">Número</th>
				<th width="40">Complemento</th>
				<th width="30">Bairro</th>
				<th width="30">Cidade</th>
				<th width="4">Estado</th>
				<th width="14">Telefone</th>
				<th width="14">Celular</th>
				<th width="80">E-mail</th>
				<th width="12">Senha</th>
				<th width="80">Imagem</th>
				
			</tr>
		</thead>
		<tbody>
		
		<?php echo '<td>';?>  <?php echo $_SESSION['clientenome']; ?>
		<?php echo '</td>';?>
		<?php echo '<td>';?>  <?php echo $_SESSION['clientecpf']; ?>
		<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clientedtnasc']; ?>
		<?php echo '</td>';?>
		<?php echo '<td>';?>  <?php echo $_SESSION['clientecep']; ?>
		<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clienteendereco']; ?>
		<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clientenumero']; ?>
		<?php echo '</td>';?>
		<?php echo '<td>';?>  <?php echo $_SESSION['clientecomplemento']; ?>
		<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clientebairro']; ?>
	<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clientecidade']; ?>
	<?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clienteestado']; ?>
    <?php echo '</td>';?>
	<?php echo '<td>';?>  <?php echo $_SESSION['clientetelefone']; ?>
   <?php echo '</td>';?>
<?php echo '<td>';?>  <?php echo $_SESSION['clientecelular']; ?> 
<?php echo '</td>';?>
<?php echo '<td>';?> <?php echo $_SESSION['clienteemail']; ?>
<?php echo '</td>';?>
<?php echo '<td>';?> <?php echo $_SESSION['clientesenha']; ?>
<?php echo '</td>';?>


<?php echo "<td>";?> <?php echo "<img src='fotos/".$_SESSION['clienteimagem']." width='100' height='80'";?><?php echo '</td>';?>
 
	</div> 
		
        <td><a href="?acao=del&cliente" class="btn btn-danger">Remover</td>
		<td><a href="?acao=alterar&cliente" class="btn btn-success">Alterar</td>
		</tr>
	
				
		
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
  <?php require "footer.php" ?> 