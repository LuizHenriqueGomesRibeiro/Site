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
  <script type="text/javascript" src="script/cadastrarProjeto.js"></script>
</head>
<body style="overflow-x: hidden;">
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
	<div style="position: relative; width: 90vw; margin: auto;">
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
				</div>
				<div class="form-group">
					<label class="label" for="email">Foto principal:</label>
					<div style="position: relative;">
						<img style="position: absolute; width: 624px; height: 342px; top: 30px; left: 80px; object-fit: cover; 
						background-color: antiquewhite;" alt="Imagem" id="foto64" src="${projeto.fotoprojeto}">
					</div>
				</div>
				<input style="width: 624px;" type="file" accept="image/*" onchange="visualizarImg('foto64', 'foto')" class="form-control inputImg" name="foto" id="foto">
				<div style="position: relative; margin-bottom: 180px; margin-top: 340px;" class="row">
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 1:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto641" class="img" src="${projeto.foto1}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto641', 'foto1')" class="form-control inputImg" name="foto1" id="foto1">
					</div>
					<div class="col">
						<div class="form-group"> 
							<label class="label" for="email">Foto secundária 2:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto642" class="img" src="${projeto.foto2}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto642', 'foto2')" class="form-control inputImg" name="foto2" id="foto2">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 3:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto643" class="img" src="${projeto.foto3}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto643', 'foto3')" class="form-control inputImg" name="foto3" id="foto3">
					</div>
				</div>
				<div style="position: relative; margin-bottom: 180px;" class="row">
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 4:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto644" class="img" src="${projeto.foto4}">
								</div>
							</div>
							<input type="file" accept="image/*" onchange="visualizarImg('foto644', 'foto4')" class="form-control inputImg" name="foto4" id="foto4">
						</div>
						<div class="col">
							<div class="form-group">
								<label class="label" for="email">Foto secundária 5:</label>
								<div style="position: relative;">
								<img alt="Imagem" id="foto645" class="img" src="${projeto.foto5}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto645', 'foto5')" class="form-control inputImg" name="foto5" id="foto5">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 6:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto646" class="img" src="${projeto.foto6}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto646', 'foto6')" class="form-control inputImg" name="foto6" id="foto6">
					</div>
				</div>
				<div style="position: relative; margin-bottom: 180px;" class="row">
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 7:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto647" class="img" src="${projeto.foto7}">
								</div>
							</div>
							<input type="file" accept="image/*" onchange="visualizarImg('foto647', 'foto7')" class="form-control inputImg" name="foto7" id="foto7">
						</div>
						<div class="col">
							<div class="form-group">
								<label class="label" for="email">Foto secundária 8:</label>
								<div style="position: relative;">
								<img alt="Imagem" id="foto648" class="img" src="${projeto.foto8}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto648', 'foto8')" class="form-control inputImg" name="foto8" id="foto8">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 9:</label>
							<div style="position: relative;">
								<img alt="Imagem" id="foto649" class="img" src="${projeto.foto9}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto649', 'foto9')" class="form-control inputImg" name="foto9" id="foto9">
					</div>
				</div>
				<button>Salvar</button>
			</form>
		</div>
	</div>
</body>
</html>