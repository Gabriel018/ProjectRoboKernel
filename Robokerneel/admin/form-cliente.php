   <?php require "includes/header.php" ?>


  <div class="col-md-10">
		  	<div class="row">
		<div class="col-md-12">
		  			<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">
				  <h1>Cadastre cliente</h1>
			</div>
			
			
			<div class="panel-options">
								<a href="cliente-lista.php"><button type='button' class='btn btn-sm btn-success'>Listar</button></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
					<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  	<div class="panel-body">
			<form class="form-horizontal" method="post" action="cliente-cadastrar.php" enctype="multipart/form-data">
			
			<div class="form-group">
      <label for="nome">Nome:</label>
      <input type="text" class="form-control" id="nome" placeholder="Nome" name="nome">
    </div>
	<div class="form-group">
      <label for="cpf">CPF:</label>
      <input type="text" class="form-control" id="cpf" placeholder="CPF" name="cpf">
    </div> 
<div class="form-group">
      <label for="dtnasc">Data de Nascimento:</label>
<input type="date" class="form-control" id="dtnasc" placeholder="Data de Nascimento" name="dtnasc">
    </div> 	
<div class="form-group">
      <label for="cep">CEP:</label>
<input type="text" class="form-control" id="cep" placeholder="CEP" name="cep">
   
	

 
 
<div id="cepstatus" ></div>	
	
<div class="form-group">
      <label for="endereco">Endereço:</label>
<input type="text" class="form-control" id="endereco" placeholder="Endereço" name="endereco"/>
</div> 		
<div class="form-group">
      <label for="numero">Número:</label>
<input type="text" class="form-control" id="numero" placeholder="Número" name="numero">
</div> 
<div class="form-group">
      <label for="complemento">Complemento:</label>
<input type="text" class="form-control" id="complemento" placeholder="Complemento" name="complemento">
</div> 

<div class="form-group">
      <label for="bairro">Bairro:</label>
<input type="text" class="form-control" id="bairro" placeholder="Bairro" name="bairro"/>
</div>

<div class="form-group">
      <label for="cidade">Cidade:</label>
<input type="text" class="form-control" id="cidade" placeholder="Cidade" name="cidade"/>
</div>
<div class="form-group">
<label for="estado">Estado:</label>
<input type="text" class="form-control" id="uf" placeholder="Estado" name="estado"/></div>
<div class="form-group">
<label for="telefone">Telefone:</label>
<input type="text" class="form-control" id="telefone" placeholder="Telefone" name="telefone"></div>
<div class="form-group">
<label for="celular">Celular:</label>
<input type="text" class="form-control" id="celular" placeholder="Celular" name="celular"></div>
<div class="form-group">
<label for="email">E-mail:</label>
<input type="email" class="form-control" id="email" placeholder="E-mail" name="email"></div>

<div class="form-group">
<label for="senha">Senha:</label>
<input type="password" class="form-control" id="senha" placeholder="Senha" name="senha"></div>



				
				
					
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-warning">Cadastrar</button>
					</div>
				</div>
			</form>
		
		</div>
		  		</div>		  		
		  	</div> 	
		  </div>
		</div>
    </div>
		
		
		
		
		
		
		
		
    </section>

     <?php require "includes/footer.php" ?>                                                                     