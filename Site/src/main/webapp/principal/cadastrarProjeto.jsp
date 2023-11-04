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
													<th>Foto principal</th>
													<th>Editar</th>
													<th>Excluir</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${projetos}" var="ml">
													<tr>
														<td><c:out value="${ml.nome}"></c:out></td>
														<td><img width="70px;" height="70px;" alt="" src="${ml.fotoprojeto}"></td>
														<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoEditar&id_projeto=${ml.id}">Editar</a></td>
														<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=excluirProjeto&id_projeto=${ml.id}">Excluir</a></td>
													</tr>												
												</c:forEach>
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
				<select name="ranking_projeto" class="custom-select" id="inputGroupSelect01">
					<option value="1">Ranking 1</option>
					<option value="2">Ranking 2</option>
					<option value="3">Ranking 3</option>
					<option value="4">Ranking 4</option>
					<option value="5">Ranking 5</option>
					<option value="6">Ranking 6</option>
					<option value="7">Ranking 7</option>
					<option value="8">Ranking 8</option>
					<option value="9">Ranking 9</option>
					<option value="0">Ranking 0</option>
				</select>
				<div class="form-group">
					<label class="label" for="email">Foto principal:</label>
					<div style="position: relative;">
						<img style="position: absolute; width: 624px; height: 280px; top: 30px; left: 80px; object-fit: cover; 
						background-color: antiquewhite;" alt="Imagem" id="foto64">
					</div>
				</div>
				<input style="width: 624px;" type="file" accept="image/*" onchange="visualizarImg('foto64', 'foto')" class="form-control inputImg" name="foto" id="foto">
				<div style="position: relative; margin-bottom: 180px; margin-top: 340px; margin-bottom: 315px;" class="row">
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 1:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto641" class="img">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto641', 'foto1')" class="form-control inputImg" name="foto1" id="foto1">
					</div>
					<div class="col">
						<div class="form-group"> 
							<label class="label" for="email">Foto secundária 2:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto642" class="img">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto642', 'foto2')" class="form-control inputImg" name="foto2" id="foto2">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 3:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto643" class="img">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto643', 'foto3')" class="form-control inputImg" name="foto3" id="foto3">
					</div>
				</div>
				<div style="position: relative; margin-bottom: 180px; margin-bottom: 315px;" class="row">
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 4:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto644" class="img">
								</div>
							</div>
							<input type="file" accept="image/*" onchange="visualizarImg('foto644', 'foto4')" class="form-control inputImg" name="foto4" id="foto4">
						</div>
						<div class="col">
							<div class="form-group">
								<label class="label" for="email">Foto secundária 5:</label>
								<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto645" class="img">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto645', 'foto5')" class="form-control inputImg" name="foto5" id="foto5">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 6:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto646" class="img">
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
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto647" class="img">
								</div>
							</div>
							<input type="file" accept="image/*" onchange="visualizarImg('foto647', 'foto7')" class="form-control inputImg" name="foto7" id="foto7">
						</div>
						<div class="col">
							<div class="form-group">
								<label class="label" for="email">Foto secundária 8:</label>
								<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto648" class="img">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto648', 'foto8')" class="form-control inputImg" name="foto8" id="foto8">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 9:</label>
							<div style="position: relative;">
								<img alt="Imagem" style="width: 312px; height: 312px;" id="foto649" class="img">
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