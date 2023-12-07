<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Início</title>
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
	<input type="hidden" value="<%= request.getParameter("filtrarCarregamento")%>" name="filtrarCarregamento">
	<div style="background-color: #C88246; width: 100vw; height: 100vh;" id="carregando">
		<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
			<img alt="" style="width: 140px; height: 140px; position: absolute;" src="imagens/thumbnail_LOGOCOLORIDA_Novo.png"/>
			<div style="position: relative; top: 98px; background-color: #C88246; z-index: 9999; padding: 34px; left: -7px;">
				<a style="color: white; text-decoration: none;" href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarTelaIndex">Iniciar portfólio</a>
			</div>
		</div>
	</div>
</body>
</html>