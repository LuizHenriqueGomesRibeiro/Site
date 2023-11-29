<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <link rel="stylesheet" href="estilos/style.css">
  <link rel="stylesheet" href="estilos/style2.css">
  <script type="text/javascript" src="<%=request.getContextPath()%>/script/paginaProjeto.js"></script>
</head>
<body id="body" onload="loading();">
	<div id="carregando">
		<span class="loader"></span>
	</div>
	<div style="display: none;" id="carregado">
	
		<nav style="position: fixed; background-color: white; height: 130px; box-shadow: none; color: black;" class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
			<div style="height: 100px; width: 100vw;">
				<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
					<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
					<div style="position: relative; top: -50px; left: 470px;">
						<a id="juvenal" onclick="teste();" href="#">juvenal</a>
						<a style="color: blue;" class="navbar-brand" href="#">Studiouna</a>
						<a style="color: blue;" class="navbar-brand" href="#">Projetos</a>
						<a style="color: blue;" class="navbar-brand" href="#">Escritório</a>
						<a style="color: blue;" class="navbar-brand" href="#">Mídia</a>
						<a style="color: blue;" class="navbar-brand" href="contato.jsp">Contato</a>
						<a style="color: blue;" class="navbar-brand" href="aplicacao/restrito.jsp">Área restrita</a>
					</div>
				</div>
			</div>
		</nav>
		<div style="position: relative; top: 20vh;">
			<div style="position: relative; float: left; width: 30%; padding-left: 20px;">
				<p>Local:</p>
				<p><c:out value="${projeto.local}"></c:out></p>

				<p>Data do projeto:</p>
				<p><c:out value="${projeto.data}"></c:out></p>
	
				<p>Sobre:</p>
				<p><c:out value="${projeto.sobre}"></c:out></p>
			</div>
			<div id="divImagens" style="position: relative; float: right; width: 70%;">
				<ul class="da">
					<c:if test="${fn:length(projeto.foto1) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto1}" alt='Volcano and lava field against a stormy sky'> 
									<figcaption>Casa cor | 2019</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${fn:length(projeto.foto2) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto2}" alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
									<figcaption>Adventure getaways</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${fn:length(projeto.foto3) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto3}" alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
									<figcaption>Adventure getaways</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${fn:length(projeto.foto4) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto4}" alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
									<figcaption>Adventure getaways</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${fn:length(projeto.foto5) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto5}" alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
									<figcaption>Adventure getaways</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
					<c:if test="${fn:length(projeto.foto6) > 100}">
						<li style="width: 261px; height: 261px;">
							<a href="">
								<figure>
									<img class="da" src="${projeto.foto6}" alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
									<figcaption>Adventure getaways</figcaption>
								</figure>
							</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>