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
<body style="background-color: #fff;">
	<jsp:include page="includes/superbar.jsp"></jsp:include>
	<section style="width: 100vw; height: 150px;">
		<div style="width: 810px; margin: auto; height: 150px; display: flex;">
			<div style="width: 270px; height: 150px; display: flex;">
				<i class="fa fa-instagram" aria-hidden="true"></i>
			</div>
			<div style="width: 270px; height: 150px; display: flex;">
				<i class="fa fa-phone" aria-hidden="true"></i>
			</div>
			<div style="width: 270px; height: 150px; display: flex;">
				<i class="fa fa-envelope" aria-hidden="true"></i>
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