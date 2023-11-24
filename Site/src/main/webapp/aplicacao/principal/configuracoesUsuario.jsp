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
		<div style="width: calc(100% - 225px); position: relative; left: 225px;">
			<c:choose>
				<c:when test="${alternarSistema == null}">
					<h4>Entre novamente com seus dados para ter acesso às configurações do usuário</h4>
					<div class="login-form">
						<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
							<h1>Login</h1>
							<input type="hidden" name="acao" value="validarAcessoConfiguracoesUsuario">
							<div class="content">
								<div class="input-field">
									<input id="email" name="email" type="email" placeholder="Email" autocomplete="nope">
								</div>
								<div class="input-field">
									<input id="senha" name="senha" type="password" placeholder="Senha" autocomplete="new-password">
								</div>
							</div>
							<div class="action">
								<button>Entrar</button>
							</div>
						</form>
						<div>
						<p>${mensagem}</p>
					</div>
					</div>
				</c:when>
				<c:otherwise>
					<h4>Usuário em alteração: ${usuario.nome}</h4>
					<p>Escolha os campos para redefinir:</p>
					<p>*Os campos vazios não serão alterados.</p>
					<input name="nome" id="nome" value="${usuario.nome}">
					<input name="email" id="email" value="${usuario.email}">
					
					<p>*A senha só será alterada se todos os campos forem preenchidos</p>
					<form action="<%=request.getContextPath()%>/ServletLogin" method="post" name="formularioLogin">
						
						<input type="hidden" name="acao" value="redefinirSenha">
						
						<input type="hidden" name="id" value="${usuario.id}">
						
						<p>Digite a senha atual:</p>
						<input id="senha" name="senhaAntiga" type="password" placeholder="Senha" autocomplete="new-password">
						
						<p>Digite novamente a senha atual:</p>
						<input id="senha" name="senhaAntigaRepeticao" type="password" placeholder="Senha" autocomplete="new-password">
						
						<p>Digite a nova senha:</p>
						<input id="senha" name="senhaNova" type="password" placeholder="Senha" autocomplete="new-password">
						
						<p>Digite novamente a nova senha:</p>
						<input id="senha" name="senhaNovaRepeticao" type="password" placeholder="Senha" autocomplete="new-password">
						<button>Mudar senha</button>
						
						<p>${mensagem}</p>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>