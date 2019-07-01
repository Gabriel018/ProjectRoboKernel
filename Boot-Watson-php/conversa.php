<?php
header("Content-Type: text/plain");

//Worskspace
$workspace = "40c62a1a-1695-45ce-aeef-beaf1d6b9796";

$apikey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

//Capturar Texto
$texto = $_REQUEST["texto"];
//Verifica se existe identificador
//Caso não haja, crie um

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if(isset($_SESSION["identificador"])){
	$identificador = $_SESSION["identificador"];
}else{
	$identificador = md5(uniqid(rand(), true));
	$_SESSION["identificador"] = $identificador;
}

//URL da API
//(deve ser passado o método e a versão da API em GET)
$url = "https://gateway.watsonplatform.net/assistant/api/v1/workspaces/" . $workspace;
$urlMessage = $url . "/message?version=2018-09-20";


    ////Dados
    $dados  = "{";
    $dados .= "\"input\": ";
    $dados .= "{\"text\": \"" . $texto . "\"},";
    $dados .= "\"context\": {\"conversation_id\": \"" . $identificador . "\",";
    $dados .= "\"system\": {\"dialog_stack\":[{\"dialog_node\":\"root\"}], \"dialog_turn_counter\": 1, \"dialog_request_counter\": 1}}";
    $dados .= "}";

    $headers = array('Content-Type:application/json');
        //Iniciando Comunicação cURL
    $ch = curl_init();
    //Selecionando URL
    curl_setopt($ch, CURLOPT_URL, $urlMessage);
    //O cabeçalho é importante para definir tipo de arquivo enviado
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    //Habilitar método POST
    curl_setopt($ch, CURLOPT_POST, 1);
     //Inviar dados
    curl_setopt($ch, CURLOPT_POSTFIELDS, $dados);
   
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    //Autenticação
    curl_setopt($ch, CURLOPT_USERPWD, "apikey:$apikey");
    curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    //Executa
    $retorno = curl_exec($ch);
    //Finaliza 
    curl_close($ch);


    //Imprime na tela
    $retorno = json_decode($retorno);
  echo json_encode($retorno, JSON_PRETTY_PRINT);

?>