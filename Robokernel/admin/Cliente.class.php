<?php 
require "Conexao.class.php";
class Cliente{ 
    public $codcliente;
	public $nome;
    public $email;
    public $senha;
    
    public function autenticarCliente(){
        $pdo = Conexao::conexao();
        $sql = "SELECT email,senha FROM cliente WHERE email = '$this->email' AND senha ='$this->senha'";
        $consulta = $pdo->query($sql);
        $dados = false;
        
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados = true;
        }
        return $dados;
    }
    
    
    public function inserir(){
    
        $pdo = Conexao::conexao();
        $sql = 'Insert into cliente values(default, :nome, :email, :senha)';
        $stmt = $pdo->prepare($sql);

        $stmt->execute(array(
        ':nome' => $this->nome,
     
        ':email' => $this->email,
        ':senha' => $this->senha
         
    ));    
}
    
     public function lista(){
        $pdo = Conexao::conexao();
        
        $sql  = "SELECT * FROM cliente;";
        $consulta = $pdo->query($sql);
        $dados = null;
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados[] = array(
            "codcliente" => $linha['codcliente'],
            "nome" => $linha['nome'],
      
            "email" => $linha['email'],    
           
            "senha" => $linha['senha']   
                  
            );     
        }
        $pdo = null;
        return $dados;
    }
    
    
       public function pesquisarPorNome($nome){
        $pdo = Conexao::conexao();
        
        $sql = "SELECT * FROM cliente WHERE nome like '%$nome%'";
        $consulta = $pdo->query($sql);
        
        while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)){
            $dados[] = array(
                "codcliente" => $linha['codcliente'],
                "nome" => $linha['nome'],
                "email" => $linha['email'],
                "senha" => $linha['senha'],
                
               
            );     
        }
        $pdo = null;
        return $dados;
    }
    
    public function excluir(){
        $pdo = Conexao::conexao();
        $sql = 'DELETE FROM cliente WHERE codcliente = :codcliente';
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array(
            ':codcliente'=>$this->codcliente
        ));        
        
    }
    
 
    
}
    
    
    
    
