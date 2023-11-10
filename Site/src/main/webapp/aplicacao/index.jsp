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
  <link rel="stylesheet" href="estilos/style.css">
  <link rel="stylesheet" href="estilos/style2.css">
  <script type="text/javascript" src="script/paginaProjeto.js"></script>
</head>
<body onload="loading();">
	<div id="carregando">
		<h1>Carregando...</h1>
	</div>
	<div style="display: none;" id="carregado">
		<div class="carousel">
			<div style="height: 100px; width: 100vw;">
				<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
					<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
					<div style="position: relative; top: -50px; left: 470px;">
						<a class="navbar-brand" href="#">Studiouna</a>
						<a class="navbar-brand" href="#">Projetos</a>
						<a class="navbar-brand" href="#">Escritório</a>
						<a class="navbar-brand" href="#">Mídia</a>
						<a class="navbar-brand" href="contato.jsp">Contato</a>
						<a class="navbar-brand" href="aplicacao/restrito.jsp">Área restrita</a>
					</div>
				</div>
			</div>
			<ul style="position: relative;" class="panes">
				<li id="s1"><img src="${projeto1.fotoprojeto}"></li>
				<li id="s2"><img src="${projeto2.fotoprojeto}"></li>
				<li id="s3"><img src="${projeto3.fotoprojeto}"></li>
				<li id="s4"><img src="${projeto4.fotoprojeto}"></li>
				<li id="s5"><img src="${projeto5.fotoprojeto}"></li>
			</ul>
		</div>
		<div style="position: relative; top: 116vh;">
			<ul class="da">
				<c:if test="${verificao1}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=1">
							<figure>
								<img class="da" src='${projeto1.foto1}' alt='1'>
								<figcaption>1</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao2}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=2">
							<figure>
								<img class="da" src='${projeto2.foto1}' alt='2'>
								<figcaption>2</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao3}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=3">
							<figure>
								<img class="da" src='${projeto3.foto1}' alt='3'>
								<figcaption>3</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao4}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=4">
							<figure>
								<img class="da" src='${projeto4.foto1}' alt='4'>
								<figcaption>4</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao5}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=5">
							<figure>
								<img class="da" src='${projeto5.foto1}' alt='5'>
								<figcaption>5</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao6}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=6">
							<figure>
								<img class="da" src='${projeto6.foto1}' alt='6'>
								<figcaption>6</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao7}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=7">
							<figure>
								<img class="da" src='${projeto7.foto1}' alt='7'>
								<figcaption>7</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao8}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=8">
							<figure>
								<img class="da" src='${projeto8.foto1}' alt='8'>
								<figcaption>8</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
				<c:if test="${verificao9}">
					<li>
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=9">
							<figure>
								<img class="da" src='${projeto9.foto1}' alt='9'>
								<figcaption>9</figcaption>
							</figure>
						</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
	$(function () {
		 $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
		});
	</script>
</body>
</html>