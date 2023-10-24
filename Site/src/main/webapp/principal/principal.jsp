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
  <link rel="stylesheet" href="estilos/restrito.css">
</head>
<body>
	<section style="position: relative; top: 100px;" class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						</div>
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Escolha que projeto você deseja alterar:</h3>
									<div id="table" style="position: relative; width: 50vw; left: -100px; height: 200px;">
										<table class="table table-striped table-sm">
											<thead>
												<tr>
													<th>Nome</th>
													<th>Ver</th>
													<th>Editar</th>
													<th>Excluir</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><a style="pointer-events: none;" class="page-link" onclick="">Projeto Filadélfia</a></td>
													<td><a class="page-link" href="#" onclick="">Ver</a></td>
													<td><a class="page-link" href="#" onclick="editar();">Editar</a></td>
													<td><a style="color: red;" class="page-link" href="#" onclick="">Excluir</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<div style="position: relative; width: 70vw; margin: auto; top: 40px;">
		<div id="formulario">
			<form enctype="multipart/form-data" method="post" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm"
				class="contactForm">
				<input type="hidden" name="acao" value="persistirProjeto" />
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="name">Nome do projeto:</label> <input
								type="text" class="form-control" name="nome_cliente" id="name"
								placeholder="Nome">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 1:</label>
							<img alt="Imagem" id="foto64" src="" width="70px;">
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto64', 'foto1')" class="form-control" name="foto1" id="foto1">
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 1:</label> <input
								type="email" class="form-control" name="foto"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 2:</label> <input
								type="email" class="form-control" name="foto2"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 3:</label> <input
								type="email" class="form-control" name="foto3"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 4:</label> <input
								type="email" class="form-control" name="foto4"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 5:</label> <input
								type="email" class="form-control" name="foto5"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 6:</label> <input
								type="email" class="form-control" name="foto6"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 7:</label> <input
								type="email" class="form-control" name="foto7"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 8:</label> <input
								type="email" class="form-control" name="foto8"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 9:</label> <input
								type="email" class="form-control" name="foto9"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 10:</label> <input
								type="email" class="form-control" name="foto10"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 11:</label> <input
								type="email" class="form-control" name="foto11"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 12:</label> <input
								type="email" class="form-control" name="foto12"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 13:</label> <input
								type="email" class="form-control" name="foto13"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 14:</label> <input
								type="email" class="form-control" name="foto14"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 15:</label> <input
								type="email" class="form-control" name="foto15"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 16:</label> <input
								type="email" class="form-control" name="foto16"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 17:</label> <input
								type="email" class="form-control" name="foto17"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto 18:</label> <input
								type="email" class="form-control" name="foto18"
								id="email" placeholder="E-mail">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label class="label" for="#">Descrição:</label>
							<textarea name="mensagem_cliente" class="form-control"
								id="message" cols="30" rows="4" placeholder="Mensagem"></textarea>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<input type="submit" value="Persistir projeto" class="btn btn-primary">
							<div class="submitting"></div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		jQuery("#formulario").hide();

		function editar() {
			jQuery("#table").hide();
			jQuery("#formulario").show();
		}
		
		function visualizarImg(foto64, foto1){
			var preview = document.getElementById(foto64);
			var file = document.getElementById(foto1).files[0];
			var reader = new FileReader();
			
			reader.onloadend = function (){
				preview.src = reader.result;
			};
			
			if(file){
				reader.readAsDataURL(file);
			}else{
				preview.src = '';
			}
		}
	</script>
</body>
</html>