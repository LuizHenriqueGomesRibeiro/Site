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
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="estilos/style.css">
  <link rel="stylesheet" href="estilos/contato.css">
</head>
<body style="background-color: #fff;">
	<nav style="position: fixed; background-color: white; height: 130px; box-shadow: none; color: black;" class="navbar navbar-expand-lg navbar-dark shadow-5-strong">
		<div style="position: relative; top: 5px; width: 600px; float: right;"
			class="container-fluid">
			<a class="navbar-brand" href="#">Brand</a>
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<div class="toc collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item 1"><a style="color: black;"
						class="nav-link active" aria-current="page" href="#">Studiouna</a></li>
					<li class="nav-item 2"><a style="color: black;"
						class="nav-link" href="#">Projetos</a></li>
					<li class="nav-item 3"><a style="color: black;"
						class="nav-link" href="#">Escritório</a></li>
					<li class="nav-item 4"><a style="color: black;"
						class="nav-link" href="#">Mídia</a></li>
					<li class="nav-item 5"><a style="color: black;"
						class="nav-link" href="contato.jsp">Contato</a></li>
					<li class="disabled-link nav-item 5"><a style="color: black;"
						class="nav-link" href="#">|</a></li>
					<li class="nav-item 5"><a style="color: black;"
						class="nav-link" href="aplicacao/restrito.jsp">Área restrita</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section style="position: relative; top: 100px;" class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						<div style="position: relative; width: 1200px; margin: auto;" class="row mb-5">
							<div style="width: 400px;" class="col-md-3">
								<div class="dbox w-100 text-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-phone"></span>
					        		</div>
			        				<div style="position: relative; top: -65px; left: 140px;" class="text">
				            			<p><span>Telefone:</span><a href="tel://1234567920">(27) 99751-2899</a></p>
				          			</div>
			          			</div>
							</div>
							<div style="margin-right: 40px; width: 440px;" class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-paper-plane"></span>
			        		</div>
			        		<div style="position: relative; top: -65px; left: 170px;" class="text">
				            	<p>
				            		<span>Email:</span>
				            		<a href="mailto:info@yoursite.com">brunagomes@gmail.com</a>
				            	</p>
				          </div>
			          </div>
							</div>
							<div style="width: 400px;" class="col-md-3">
								<div class="dbox w-100 text-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-globe"></span>
					        		</div>
					        		<div style="position: relative; top: -65px; left: 120px;" class="text">
						            	<p><span>Instagram:</span> <a href="https://www.instagram.com/studiouna__b/">studioUna</a></p>
						          	</div>
			          			</div>
							</div>
						</div>
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Entre em contato:</h3>
									<div id="form-message-warning" class="mb-4"></div> 
				      				<div id="form-message-success" class="mb-4">Your message was sent, thank you!</div>
									<form method="post" action="<%=request.getContextPath()%>/ServletFormulario" id="contactForm" name="contactForm" class="contactForm">
										<input type="hidden" name="acao" value="cadastrarPergunta"/>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="label" for="name">Nome completo:</label>
													<input type="text" class="form-control" name="nome_cliente" id="name" placeholder="Nome">
												</div>
											</div>
											<div class="col-md-6"> 
												<div class="form-group">
													<label class="label" for="email">E-mail:</label>
													<input type="email" class="form-control" name="email_cliente" id="email" placeholder="E-mail">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="label" for="#">Mensagem:</label>
													<textarea name="mensagem_cliente" class="form-control" id="message" cols="30" rows="4" placeholder="Mensagem"></textarea>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" value="Enviar mensagem:" class="btn btn-primary">
													<div class="submitting"></div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="col-md-5 d-flex align-items-stretch">
								<div class="info-wrap w-100 p-5 img" style="background-image: url(imagens/DETALHE-1.png);"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="script/jquery.min.js"></script>
	<script src="script/popper.js"></script>
	<script src="script/bootstrap.min.js"></script>
	<script src="script/jquery.validate.min.js"></script>
</body>
</html>