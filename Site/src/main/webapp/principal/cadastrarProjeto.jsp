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
  <link rel="stylesheet" href="estilos/restritoPersonalizado.css">
</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						</div>
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4">Escolha que projeto você deseja alterar:</h3>
									<div>
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
				<div class="row" id="carregarInputs">
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="name">Nome do projeto:</label> <input
								type="text" class="form-control" name="nome_cliente" id="name"
								placeholder="Nome">
						</div>
					</div>
					<div style="position: relative;" class="col-md-6">
						<div class="form-group">
							<label class="label" for="email">Foto principal:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto64" class="img" src="${projeto.fotoprojeto}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto64', 'foto1')" class="form-control inputImg" name="foto1" id="foto1">
					</div>
				</div>
			</form>
			<label class="picture" for="picture__input" tabIndex="0">
  <span class="picture__image"></span>
</label>

<input type="file" name="picture__input" id="picture__input">
			<button onclick="carregarInputs();" type="button">Carregar lista</button>
		</div>
	</div>
	<script type="text/javascript">
		const inputFile = document.querySelector("#picture__input");
		const pictureImage = document.querySelector(".picture__image");
		const pictureImageTxt = "Choose an image";
		pictureImage.innerHTML = pictureImageTxt;
	
		inputFile.addEventListener("change", function (e) {
		  const inputTarget = e.target;
		  const file = inputTarget.files[0];
	
		  if (file) {
		    const reader = new FileReader();
	
		    reader.addEventListener("load", function (e) {
		      const readerTarget = e.target;
	
		      const img = document.createElement("img");
		      img.src = readerTarget.result;
		      img.classList.add("picture__img");
	
		      pictureImage.innerHTML = "";
		      pictureImage.appendChild(img);
		    });
	
		    reader.readAsDataURL(file);
		  } else {
		    pictureImage.innerHTML = pictureImageTxt;
		  }
		});
	
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
		
		function carregarInputs(){
			for(var p = 1; p < 10; p++){
				jQuery("#carregarInputs").append(
					'<div style="position: relative; margin-top: 170px;" class="col-md-6">' +
						'<div class="form-group">' +
							'<label class="label" for="email">Foto secundária ' + p + '</label>' +
							'<div style="position: relative;">' +
								'<img alt="Imagem" id="foto64" class="img" src="${projeto.fotoprojeto}">' +
							'</div>' +
						'</div>' +
						'<input type="file" accept="image/*" onchange="visualizarImg(\'foto64\', \'foto1\')" class="form-control inputImg" name="foto1" id="foto1">' +
					'</div>'
				);
			}
		}
	</script>
</body>
</html>