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
  <link rel="stylesheet" href="estilos/projeto.css">
  <script type="text/javascript" src="<%=request.getContextPath()%>/script/paginaProjeto.js"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
  <style type="text/css">
  	p{
		font-family: 'Quicksand', sans-serif !important;
		font-size: 15px;
	}
	
	li{
		margin-bottom: 16px;
	}
	
	.loader {
		width: 148px;
		height: 148px;
		border-radius: 50%;
		display: inline-block;
		border-top: 3px solid #FFF;
		border-right: 3px solid transparent;
		box-sizing: border-box;
		animation: rotation 1s linear infinite;
	}
	
	@keyframes rotation {
	  	0% {
	    	transform: rotate(0deg);
	  	}
	  	100% {
	    	transform: rotate(360deg);
	  	}
	}
  </style>
</head>
<body id="body" onload="loading();">
	<div id="carregando">
		<div style="background-color: #C88246; width: 100vw; height: 100vh;" id="carregando">
			<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
				<div style="position: absolute;" class="loader"></div>
				<img alt="" style="width: 140px; height: 140px; position: absolute;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
			</div>
		</div>
	</div>
	<div style="display: none;" id="carregado">
		<div style="height: 100px; width: 100vw; background-color: #C88246">
			<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
				<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
				<div style="position: relative; top: -45px; left: 432px; display: flex;">
					<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; top: -4px; left: 10px; margin-right: 20px;">
						<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 11px; top: -3px;" 
						class="navbar-brand" href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarTelaIndex&filtrarCarregamento=carregados">Tela inicial</a>
					</div>
					<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
						<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 14px; top: -3px;" 
						class="navbar-brand" href="#">Escritório</a>
					</div>
					<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
						<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 18px; top: -3px;" class="navbar-brand" 
						href="<%=request.getContextPath()%>/ServletProjetos?acao=contato&filtrarCarregamento=carregados">Contato</a>
					</div>
					<div style="border: 1px solid white; border-radius: 27px; width: 100px; height: 25px; margin-right: 20px;">
						<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; top: -3px; left: 10px;" class="navbar-brand" 
						href="<%=request.getContextPath()%>/ServletProjetos?acao=areaRestrita&filtrarCarregamento=carregados">Área restrita</a>
					</div>
				</div>
			</div>
		</div>
		<div style="position: relative; top: 5vh;">
			<div style="position: relative; float: left; width: 35%; padding-left: 20px;">
				<div style="display: flex;">
					<div style="color: black; margin-right: 83px; font-weight: 600">
						<p>Local:</p>
					</div>
					<div>
						<p>${projeto.local}.</p>
					</div>
				</div>
				
				<div style="display: flex;">
					<div style="color: black; margin-right: 10px; font-weight: 600">
						<p>Data do projeto:</p>
					</div>
					<div>
						<p>${projeto.data}.</p>
					</div>
				</div>
				
				<div style="display: flex;">
					<div style="color: black; margin-right: 79px; font-weight: 600">
						<p>Sobre:</p>
					</div>
					<div>
						<p>${projeto.sobre}.</p>
					</div>
				</div>
			</div>
			<div id="divImagens" style="position: relative; float: right; width: 65%; padding-left: 17px;">
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
	<script type="text/javascript">
		function loading(){
			jQuery("#carregando").remove();
			jQuery("#carregado").show();
		}
	</script>
</body>
</html>