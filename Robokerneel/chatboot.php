
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="css\boot.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chatboot</title>
</head>
<body>
<div id="watson" class="watson">
	<div class="mensagens">
		<div class="area" id="chat">
		</div>
	</div>
	<form id="mensagem" class="mensagem">
		<input type="text" id="texto" name="texto" placeholder="Digite sua mensagem"/>
		<button type="submit">Enviar</button>
	</form>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
//Submeter Formulário
$("#mensagem").submit(function(){
	//Caso o usuário envie uma mensagem vazia
	if($("#mensagem #texto").val() === ""){
		//Adiciona na área de Chat a mensagem enviada pelo usuário
		$("#chat").append("<div class=\"texto usuario\">...</div>");
		
		//Faz um scroll para a mensagem mais recente, caso necessário
		$(".mensagens").animate({scrollTop: $("#chat").height()});
		setTimeout(function(){
			//Adiciona uma resposta padrão afirmando que o usuário deixou o campo vazio
			$("#chat").append("<div class=\"texto chatbot\">Você precisa digitar alguma coisa para prosseguir.</div>");
			//Faz um scroll para a mensagem mais recente, caso necessário
			$(".mensagens").animate({scrollTop: $("#chat").height()});
		},1000);
		return false;
	}
	
	//Inicia método AJAX
	$.ajax({
		//Substitua o caminho da URL pelo que você salvou o arquivo de backend
		url: "conversa.php?texto=" + $("#mensagem #texto").val(),
		dataType: 'json', // Determina o tipo de retorno
		beforeSend: function(){
			//Adiciona a mensagem de usuário à lista de mensagens.
			$("#chat").append("<div class=\"texto usuario\">" + $("#mensagem #texto").val() + "</div>");	
		},
		success: function(resposta){
			//Limpa o que o usuário digitou e foca no input para próxima interação.
			$("#mensagem #texto").val("");
			$("#mensagem #texto").focus();
			
			//Caso haja um erro, o Watson retornará a mensagem de erro ao usuário
			//Basta ler o objeto error para o usuário.
			if(resposta.error){
				$("#chat").append("<div class=\"texto chatbot\">" + resposta.error + "</div>");
				return false;
			}
			
			//Colocar a resposta do Watson para o usuário ler
			//A mensagem de texto pode ser lida a partir da lógica
			//do json de exemplo da imagem no post
			var mensagemChatbot  = "<div class=\"texto chatbot\">";
			mensagemChatbot		+= resposta.output.text[0];
			mensagemChatbot		+= "</div>";
			setTimeout(function(){
				$("#chat").append(mensagemChatbot);
				$(".mensagens").animate({scrollTop: $("#chat").height()});
			},1000);
		}
	});

	return false;
});
</script>
</body>
</html>