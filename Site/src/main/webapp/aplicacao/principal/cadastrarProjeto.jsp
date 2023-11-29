<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/estilos/restritoPersonalizado.css">
  <script type="text/javascript" src="<%=request.getContextPath()%>/script/cadastrarProjeto.js"></script>
</head>
<body style="overflow-x: hidden;">
	<div style="display: flex;">
		<div style="height: 100vw; width: 225px; position: fixed; background-color: #E6E6E6">
			<div style="margin: 10px;">
				<div style="margin-bottom: 10px;">
					<a href="<%=request.getContextPath()%>/ServletFormulario?acao=listarPerguntas">
						<button type="button" class="btn btn-primary">Visualizar comentários</button>
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
			<div style="padding: 20px;">
				<h4>Área de criação, modificação e exclusão de projetos:</h4>
			</div>
			<jsp:include page="includes/tabelasProjetos.jsp"></jsp:include>
			<jsp:include page="includes/formularioPersistirProjeto.jsp"></jsp:include>
			<jsp:include page="includes/modalRanking.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>