

<?php
include('conexao.php');
$sql = "select * from produto";
$sql2 = "SELECT * FROM produto";
$resultado2 = mysqli_query($conexao,$sql2);
$resultado = mysqli_query($conexao,$sql);
include 'header.php';
?>

<!--------------------------HEADER-------------------------------->

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

<hr>

<div class="container barra-pesquisa" id="search">
  <div class="row">
    <div class="col-sm-3">
      <h3 class="loja"><i>LOJAVIRTUAL</i> <a href="#" style="font-size: 17px">/Home</a></h3>
    </div>
    <div class="col-sm-7">
      <input class="input-group" type="input" placeholder="Digite aqui o que você procura...">
    </div>
    <div class="col-sm-2">
      
    </div>
  </div>    
</div>

<hr>
<!----------------------------MENU-LATERAL------------------------>

<div class="container menu-lateral">
  <div class="row">
      <div class="col-lg-3" >
        <ul class="list-group">
        <li class="list-group-item"><a href="novidades.php">Novidades</a></li>
          <li class="list-group-item">Placas Arduinos</li>
          <li class="list-group-item">Shields para Arduino</li>
          <li class="list-group-item">Automação Resid.</li>
          <li class="list-group-item">Embarcados</li>
          <li class="list-group-item">Internet das coisas</li>
          <li class="list-group-item">Cabos e Conectores</li>
          <li class="list-group-item">Displays e LCDs</li>
          <li class="list-group-item">Drivers de Motores</li>
          <li class="list-group-item">Fontes e Baterias</li>
          <li class="list-group-item">Itens Eletrônicos</li>
          <li class="list-group-item">Itens Mecanico</li>
          <li class="list-group-item">Motores</li>
          <li class="list-group-item">Protoboards</li>
          <li class="list-group-item">Rodas</li>
          <li class="list-group-item">Sensores</li>
          <li class="list-group-item">Servos & R/C</li>
          <li class="list-group-item">Wireless</li>
        </ul>
      </div>

<!---------------------------CONTEUDO-PRINCIPAL----------------------------->

        <div class="col-lg-9 principal" style="padding:0px;"> 
        <div id="carousel-example-generic" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="./img/robotica.jpg" alt="...">
    </div>

    <div class="item">
      <img src="./img/robotica.jpg" alt="...">
    </div>

    <div class="item">
      <img src="./img/robotica.jpg" alt="...">
    </div>
  </div>
  

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
    <span class="icon-next"></span>
  </a>
</div>

<script>
  $('.carousel').carousel({
  interval: 2000
})
</script>
    <br><br>  

    <!--PRODUTOS-NOVIDADES-->
    <h3>Novidades</h3>
    <hr>
       <?php
         $i = 1;
          do {
            ($dados = mysqli_fetch_array($resultado)); 
		?>
                
       <div class="col-lg-2 container">
          <div class="thumbnail">
             <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>">
             <img src="fotos/<?= $dados['imagem']; ?>" alt="" class="img-fluid"></a>
          </div>
          <div class="descricao">
           <h5><?php echo $dados['descricao']; ?></h5>
           <p><?php echo $dados['categoria']; ?></p>
			<p><?php echo "R$ ";
			echo $dados['preco']; ?>
            </p>
          </div>
      </div>
     <?php
        $i++;
         } while ($i<7);
     ?>

    </div>
  <!--PRODUTOS-MAIS VENDIDOS-->
<div class="container mais-vendidos">
         <div class="row">
    <h3>Mais Vendidos</h3>
    <hr>
    <div class="row">
        <?php
         $i = 1;
         do {
          ($dados = mysqli_fetch_array($resultado2)); 
           ?>
    <div class="col-lg-2 container">
        <div class="thumbnail">
            <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>">
			<img src="fotos/<?= $dados['imagem']; ?>" alt="" class="img-fluid"></a>
        </div>
          <h5><?php echo $dados['descricao']; ?></h5>
          <p><?php echo $dados['categoria']; ?></p>
		<p><?php echo "R$ "; echo $dados['preco']; ?></p>
    </div>
                
   <?php
        $i++;
     } while ($i<5);
   ?>

    </div>
    </div>
</div>



<?php include "footer.php";?>


