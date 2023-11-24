<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
  <link rel="stylesheet" href="estilos/restritoPersonalizado.css">
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
				<div style="margin-bottom: 10px;">
					<a href="<%=request.getContextPath()%>/ServletLogin?acao=acessarConfiguracoesUsuario">
						<button type="button" class="btn btn btn-warning">Configurações do usuário</button>
					</a>
				</div>
			</div>
		</div>
		<div style="width: calc(100% - 225px); position: relative; left: 225px;">
		<h4>Você está dentro da área restrita. Qual sistema deseja acessar?</h4>
		</div>
	</div>
</body>
</html>