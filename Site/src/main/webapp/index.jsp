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
</head>
<body>
	<div class="carousel">
			<nav class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
				<div style=" width: 600px; left: 200px;" class="container-fluid">
					<a class="navbar-brand" href="#">Brand</a>
					<button class="navbar-toggler" type="button"
						data-mdb-toggle="collapse"
						data-mdb-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-bars"></i>
					</button>
					<div class="toc collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item 1"><a class="nav-link active" aria-current="page" href="#">Studiouna</a></li>
							<li class="nav-item 2"><a class="nav-link" href="#">Projetos</a></li>
							<li class="nav-item 3"><a class="nav-link" href="#">Escritório</a></li>
							<li class="nav-item 4"><a class="nav-link" href="#">Mídia</a></li>
							<li class="nav-item 5"><a class="nav-link" href="contato.jsp">Contato</a></li>
							<li class="disabled-link nav-item 5"><a class="nav-link" href="#">|</a></li>
							<li class="nav-item 5"><a class="nav-link" href="restrito.jsp">Área restrita</a></li>
						</ul>
					</div>
				</div>
			</nav>
		<ul class="panes">
			<li id="s1"><img src="imagens/DIURNO-EED.png"></li>
			<li id="s2"><img src="imagens/RENDER-8.png"></li>
			<li id="s3"><img src="imagens/VARANDA-01.png"></li>
			<li id="s4"><img src="imagens/VARANDA 02.png"></li>
			<li id="s5"><img src="imagens/VARANDA GOURMET6.png"></li>
		</ul>
	</div>
	<div style="position: relative; top: 100vh;">
		<div style="position: relative; top: 30px;">
			<ul class="da">
				<li>
					<a href="projeto1.jsp">
						<figure>
							<img class="da" src='imagens/DETALHE-1.png' alt='Volcano and lava field against a stormy sky'>
							<figcaption>Casa cor | 2019</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/DIURNO-EED.png' alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
							<figcaption>Adventure getaways</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/ESCRITÓRIO 02.png' alt='Person standing alone in a misty forest'>
							<figcaption>Forest escapes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/ESCRITÓRIO 04.png' alt='Person hiking on a trail through mountains while taking a photo with phone'>
							<figcaption>Hiking trails</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA-01.png' alt='Street scene with person walking and others on motorbikes, all wearing masks'>
							<figcaption>Street scenes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/QUARTO ELIS_REV 01.png' alt='Fashionable-looking girl with blond hair and pink sunglasses'>
							<figcaption>Trending</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/RENDER-8.png' alt='Volcano and lava field against a stormy sky'>
							<figcaption>Mountains and volcanos</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA-01.png' alt='Guy on a bike ok a wooden bridge with a forest backdrop'>
							<figcaption>Adventure getaways</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA 02.png' alt='Person standing alone in a misty forest'>
							<figcaption>Forest escapes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA GOURMET6.png' alt='Person hiking on a trail through mountains while taking a photo with phone'>
							<figcaption>Hiking trails</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA-01.png' alt='Street scene with person walking and others on motorbikes, all wearing masks'>
							<figcaption>Street scenes</figcaption>
						</figure>
					</a>
				</li>
				<li>
					<a href="">
						<figure>
							<img class="da" src='imagens/VARANDA-01.png' alt='Fashionable-looking girl with blond hair and pink sunglasses'>
							<figcaption>Trending</figcaption>
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