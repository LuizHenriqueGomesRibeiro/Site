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
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
      <jsp:include page="estilos/contato.css"></jsp:include>
  </style>
</head>
<body style="background-color: #fff;">
	<div style="height: 100px; width: 100vw; background-color: #C88246">
		<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
			<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
			<div style="position: relative; top: -45px; left: 432px; display: flex;">
				<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; top: -4px; left: 10px; margin-right: 20px;">
					<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: -4px; top: -14px;" 
						class="navbar-brand" href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarTelaIndex&filtrarCarregamento=carregados">Tela inicial</a>
				</div>
				<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
					<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; top: -14px;" 
						class="navbar-brand" href="#">Escritório</a>
				</div>
				<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
					<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 4px; top: -14px;" class="navbar-brand" 
						href="<%=request.getContextPath()%>/ServletProjetos?acao=contato&filtrarCarregamento=carregados">Contato</a>
				</div>
				<div style="border: 1px solid white; border-radius: 27px; width: 100px; height: 25px; margin-right: 20px;">
					<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; top: -14px; left: -5px;" class="navbar-brand" 
						href="<%=request.getContextPath()%>/ServletProjetos?acao=areaRestrita&filtrarCarregamento=carregados">Área restrita</a>
				</div>
			</div>
		</div>
	</div>
	<section style="width: 100vw; height: 150px;">
		<div style="width: 810px; margin: auto; height: 150px; display: flex;">
			<div style="width: 270px; height: 150px; display: flex;">
				<div style="position: relative; margin: auto;" id="widget">
					<div style="background-color: #C88246; width: 200px; border-radius: 40px;">
						<div class="btn-o bg" data-scribe="component:button" style="width: 100%; height: 50px;">
							<a style="position: relative; left: 7px; top: -4px;" href="https://www.instagram.com/myurl/" class="btn" id="b">
								<div style="display: flex;">
									<i class="fa fa-instagram ft14"></i>
									<div style="position: relative; top: 7px; left: 20px;">
										<p style="font-size: 20px; color: white;">Instagram</p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 270px; height: 150px; display: flex;">
				<div style="background-color: #C88246; width: 200px; border-radius: 40px; height: 50px; position: relative; margin: auto;">
					<div style="display: flex; position: relative; left: -43px;">
						<i class="fa fa-phone" style="font-size:42px; position: relative; margin: auto; left: 20px; top: 5px;"></i>
						<div style="position: relative; top: 9px; left: 5px;">
							<p style="font-size: 20px; color: white;">Telefone</p>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 270px; height: 150px; display: flex;">
				<div style="background-color: #C88246; width: 200px; border-radius: 40px; height: 50px; position: relative; margin: auto;">
					<div style="display: flex; position: relative; left: -43px;">
						<i class="fa fa-envelope" style="font-size:42px; position: relative; margin: auto; top: 2px; left: 20px;"></i>
						<div style="position: relative; top: 9px; left: 5px;">
							<p style="font-size: 20px; color: white;">E-mail</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section style="position: relative;" class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Entre em contato:</h3>
									<div id="form-message-warning" class="mb-4"></div> 
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
													<input type="email" class="form-control" name="email" id="email" placeholder="E-mail">
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