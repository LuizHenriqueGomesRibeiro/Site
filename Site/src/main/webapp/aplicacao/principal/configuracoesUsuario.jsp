<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>  
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<div style="display: flex;">
		<div style="height: 100vw; width: 225px; position: fixed; background-color: #E6E6E6">
			<div style="margin: 6px;">
				<div style="margin-bottom: 10px;">
					<a href="<%=request.getContextPath()%>/ServletFormulario?acao=listarPerguntas">
						<button type="button" class="btn btn-primary">Visualizar comentários</button>
					</a>
				</div>
				<div style="margin-bottom: 10px;">
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=acessarProjetosServidor">
						<button type="button" class="btn btn-success">Configurações de projetos</button>
					</a>
				</div>
			</div>
		</div>
		<div style="width: calc(100% - 225px); position: relative; left: 225px; height: 100vh;">
			<c:choose>
				<c:when test="${alternarSistema == null}">
					<div style="position: relative; padding: 20px;">
						<h4>Entre novamente com seus dados para ter acesso às configurações do usuário:</h4>
						<div style="width: 400px; margin: auto; position: relative; margin-top: 20px;" class="login-form">
							<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
								<input type="hidden" name="acao" value="validarAcessoConfiguracoesUsuario">
								<div class="content">
									<div class="input-field">
										<input style="width: 400px;" id="email" name="email" type="email" placeholder="Email" autocomplete="nope">
									</div>
									<div style="position: relative; margin-top: 20px;" class="input-field">
										<input style="width: 400px;" id="senha" name="senha" type="password" placeholder="Senha" autocomplete="new-password">
									</div>
								</div>
								<div class="action">
									<div style="position: relative; margin: auto; width: 59px; top: 10px;">
										<button>Entrar</button>
									</div>
								</div>
							</form>
							<div>
								<p>${mensagem}</p>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div style="padding: 20px;">
						<h4>Usuário em alteração: ${usuario.nome}.</h4>
						<h4>${mensagem}</h4>
						<div style="position: relative; margin: auto; width: 500px;">
							<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
								
								<input type="hidden" name="acao" value="redefinirEmail">
								
								<input type="hidden" name="id" value="${usuario.id}">
								
								<p>E-mail atual:</p>
								<input style="width: 500px;" value="${usuario.email}" readonly="readonly">
								
								<p>Digite o seu novo E-mail:</p>
								<input style="width: 500px; margin-bottom: 10px;" id="email" name="email" placeholder="Novo E-mail">
								<button type="button" id="botaoMudarEmail" onclick="verificarInputEmail();">Mudar E-mail</button>
							</form>
		
							<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
								
								<input type="hidden" name="acao" value="redefinirNome">
								
								<input type="hidden" name="id" value="${usuario.id}">
								
								<p>Nome atual:</p>
								<input style="width: 500px;" value="${usuario.nome}" readonly="readonly">
								
								<p>Digite o seu novo nome:</p>
								<input style="width: 500px; margin-bottom: 10px;" id="nome" name="nome" placeholder="Novo nome">
								<button type="button" id="botaoMudarNome" onclick="verificarInputNome();">Mudar nome</button>
							</form>
							
							<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
								
								<input type="hidden" name="acao" value="redefinirSenha">
								
								<input type="hidden" name="id" value="${usuario.id}">
								
								<p>Digite a senha atual:</p>
								<input style="width: 500px;" id="senhaAntiga" name="senhaAntiga" type="password" placeholder="Senha" autocomplete="new-password">
								
								<p>Digite novamente a senha atual:</p>
								<input style="width: 500px;" id="senhaAntigaRepeticao" name="senhaAntigaRepeticao" type="password" placeholder="Senha">
								
								<p>Digite a nova senha:</p>
								<input style="width: 500px;" id="senhaNova" name="senhaNova" type="password" placeholder="Senha" autocomplete="new-password">
								
								<p>Digite novamente a nova senha:</p>
								<input style="width: 500px; margin-bottom: 10px;" id="senhaNovaRepeticao" name="senhaNovaRepeticao" type="password" placeholder="Senha">
								<button type="button" id="botaoMudarSenha" onclick="verificarInputSenha();">Mudar senha</button>
							</form>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<script type="text/javascript">
		function verificarInputEmail() {
			var input = document.getElementById("email").value;
			var botao = document.getElementById("botaoMudarEmail");
			if (input === "") {
				alert("O novo E-mail não pode ser vazio.");
			}else{
				botao.type = 'submit';
			}
		}
		
		function verificarInputNome() {
			var valorInput = document.getElementById("nome").value;
			var botao = document.getElementById("botaoMudarNome");
			if (valorInput === "") {
				alert("O novo nome não pode ser vazio.");
			}else{
				botao.type = 'submit';
			}
		}
		
		function verificarInputSenha() {
			var senhaAntiga = document.getElementById("senhaAntiga").value;
			var senhaAntigaRepeticao = document.getElementById("senhaAntigaRepeticao").value;
			var senhaNova = document.getElementById("senhaNova").value;
			var senhaNovaRepeticao = document.getElementById("senhaNovaRepeticao").value;
			
			var botao = document.getElementById("botaoMudarSenha");
			if (senhaAntiga === "") {
				alert("Todos os campos de senha precisam ser preenchidos.");
			}else if(senhaAntigaRepeticao === ""){
				alert("Todos os campos de senha precisam ser preenchidos.");
			}else if(senhaNova === ""){
				alert("Todos os campos de senha precisam ser preenchidos.");
			}else if(senhaNovaRepeticao === ""){
				alert("Todos os campos de senha precisam ser preenchidos.");
			}else{
				botao.type = 'submit';
			}
		}
	</script>
</body>
</html>