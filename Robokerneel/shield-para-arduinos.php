<?php
include('conexao.php');
$sql = "SELECT * FROM produto WHERE categoria='Placas Arduino' ";
$sql2 = "SELECT * FROM produto";
$resultado2 = mysqli_query($conexao,$sql2);
$resultado = mysqli_query($conexao,$sql);
include 'header.php';
?>

<div class="container header"> 
  <div class="row">
    <div class="col-lg-3 logo">
      <img src="./img/logo1.png" alt="">
    </div>
    
    <div class="col-lg-3 loja-fisica">
      <p>LOJA FÍSICA <br>
      R. Santa Luzia, 735 - Sala 504 <br>
      Rio de Janeiro / RJ</p>
    </div>
    
    <div class="col-lg-3 cetral-atendimento">
      <p>CENTRAL DE ATENDIMENTO <br>
        (21) 1234-5678 <br>
          info@robokernel.net</p>
    </div>
    
    <div class="col-lg-3 horario-funcionamento">
      <p>HORÁRIO DE FUNCIONAMENTO <br>
      De segunda à sexta das 9:00 às 18:30</p>
    </div>
  </div>
</div><br>

<div class="container barra-pesquisa" id="search">
  <div class="row">
    <div class="col-sm-3">
      <h3 class="loja"><i>LOJAVIRTUAL</i> <a href="index.php" style="font-size: 17px; text-decoration:none; color:#fff;">/Home</a></h3>
    </div>
    <div class="col-sm-7">
      <input class="input-group1" type="input" placeholder="Digite aqui o que você procura..." style="width:80%;">
      <button class="pesquisar"><i class="fab fa-searchengin"></i></button>
    </div>
    <div class="col-sm-2">
      <div class="carrinho">
        <a href="carrinho.php"><i class="fas fa-shopping-cart"></i></a>
        <div class="item-carrinho">
        <?php 
          session_start();
          
          if ( isset($_SESSION['carrinho']) && count($_SESSION['carrinho']) > 0) {
            $qtdNocarrinho = 0;
          foreach($_SESSION['carrinho'] as $codproduto => $qtd) {
            
            $qtdNocarrinho = $qtdNocarrinho + $qtd;
          }

          echo $qtdNocarrinho;
        }


        ?>
        </div>
      </div>
    </div>
  </div>    
</div><br>

<br>

<div class="container menu-lateral">
  <div class="row">
      <div class="col-lg-3 lateral" >
        <ul class="list-group">
        <a href="novidades.php"><li class="list-group-item">Novidades</li></a>
        <a href="placas-arduinos.php"><li class="list-group-item">Placas Arduinos</li></a>
        <a href="shield-para-arduinos.php"><li class="list-group-item">Shields para Arduino</li></a>
        <a href="automacao-residencial.php"><li class="list-group-item">Automação Resid.</li></a>
        <a href="#"><li class="list-group-item">Embarcados</li></a>
        <a href="#"><li class="list-group-item">Internet das coisas</li></a>
        <a href="#"><li class="list-group-item">Cabos e Conectores</li></a>
        <a href="#"><li class="list-group-item">Displays e LCDs</li></a>
        <a href="#"><li class="list-group-item">Drivers de Motores</li></a>
        <a href="#"><li class="list-group-item">Fontes e Baterias</li></a>
        <a href="#"><li class="list-group-item">Itens Eletrônicos</li></a>
        <a href="#"><li class="list-group-item">Itens Mecanico</li></a>
        <a href="#"><li class="list-group-item">Motores</li></a>
        <a href="#"><li class="list-group-item">Protoboards</li></a>
        <a href="#"><li class="list-group-item">Rodas</li></a>
        <a href="#"><li class="list-group-item">Sensores</li></a>
        <a href="#"><li class="list-group-item">Servos & R/C</li></a>
        <a href="#"><li class="list-group-item">Wireless</li></a>
        </ul>
      </div>

    
      <div class="col-sm-9">
       <?php
         $i = 1;
          do {
            ($dados = mysqli_fetch_array($resultado)); 
		?>
                
       <div class="col-md-2 container-fluid novidades">
          <div class="thumbnail">
             <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>">
             <img src="fotos/<?= $dados['imagem']; ?>" alt="" class="img-fluid"></a>
          </div>
          <div class="descricao">
           <h5><?php echo $dados['descricao']; ?></h5>
           <p><?php echo $dados['categoria']; ?></p>
			<h4><?php echo "R$ ";
			echo $dados['preco']; ?>
            </h4>
          </div>
      </div>
     <?php
        $i++;
         } while ($i<13);
     ?>
</div>

<?php include "footer.php";?>


    