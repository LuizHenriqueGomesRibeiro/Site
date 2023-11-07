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
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=1">
						<figure>
							<img class="da" src='${projeto1.foto1}' alt='Volcano and lava field against a stormy sky'>
							<figcaption>Casa cor | 2019</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=2">
						<figure>
							<img class="da" src='${projeto2.foto1}' alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
							<figcaption>Adventure getaways</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=3">
						<figure>
							<img class="da" src='${projeto3.foto1}' alt='Person standing alone in a misty forest'>
							<figcaption>Forest escapes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=4">
						<figure>
							<img class="da" src='${projeto4.foto1}' alt='Person hiking on a trail through mountains while taking a photo with phone'>
							<figcaption>Hiking trails</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=5">
						<figure>
							<img class="da" src='${projeto5.foto1}' alt='Street scene with person walking and others on motorbikes, all wearing masks'>
							<figcaption>Street scenes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=6">
						<figure>
							<img class="da" src='${projeto6.foto1}' alt='Fashionable-looking girl with blond hair and pink sunglasses'>
							<figcaption>Trending</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=7">
						<figure>
							<img class="da" src='${projeto7.foto1}' alt='Volcano and lava field against a stormy sky'>
							<figcaption>Mountains and volcanos</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=8">
						<figure>
							<img class="da" src='${projeto8.foto1}' alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
							<figcaption>Adventure getaways</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoExibir&ranking_projeto=9">
						<figure>
							<img class="da" src='${projeto9.foto1}' alt='Person standing alone in a misty forest'>
							<figcaption>Forest escapes</figcaption>
						</figure>
					</a>
				</li>
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