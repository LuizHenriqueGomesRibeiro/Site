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
	<div style="width: 100%; height: 300px;">
		<div style="display: flex; width: 1100px; margin: auto; height: 250px;">
			<div style="width: 540px; margin: 20px;">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th>Ranking</th>
							<th>Nome</th>
							<th>Foto principal</th>
							<th>Editar</th>
							<th>Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${projetos}" var="ml">
							<tr>
								<td><c:out value="${ml.ranking}"></c:out></td>
								<td><c:out value="${ml.nome}"></c:out></td>
								<td><img width="70px;" height="70px;" alt="" src="${ml.fotoprojeto}"></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoEditar&id_projeto=${ml.id}">Editar</a></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=excluirProjeto&id_projeto=${ml.id}">Excluir</a></td>
							</tr>												
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div style="width: 500px; margin: 20px;">
				<table id="tabelaDesranqueada" class="table table-striped table-sm">
					<thead>
						<tr>
							<th>Ranquear</th>
							<th>Nome</th>
							<th>Foto principal</th>
							<th>Editar</th>
							<th>Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${projetosDesranqueados}" var="ml">
							<tr>
								<td>
									<button id="botao" data-toggle="modal" data-target="#exampleModal" onclick="putId(${ml.id})">Ranquear</button>
								</td>
								<td><c:out value="${ml.nome}"></c:out></td>
								<td><img width="70px;" height="70px;" alt="" src="${ml.fotoprojeto}"></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoEditar&id_projeto=${ml.id}">
									Editar</a></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=excluirProjeto&id_projeto=${ml.id}">
									Excluir</a></td>
							</tr>												
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div style="margin: auto; width: 100%;">
		<div style="margin: auto; width: 80%; display: flex;">
			<div style="width: 45%; height: 30%;">
			</div>
			<div style="width: 45%; height: 30%;">
			</div>
		</div>
	</div>
	<div style="display: flex;">
		<div style="margin: 50px;">
		</div>
		<div style="margin: 50px;">
		</div>
	</div>
	<div style="position: relative; width: 90vw; margin: auto;">
		<div id="formulario">
			<form enctype="multipart/form-data" method="post" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm" class="contactForm">
				<input type="hidden" name="acao" value="persistirProjeto" />
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label class="label" for="name">Nome do projeto:</label> <input
								type="text" class="form-control" name="nome_projeto" id="name"
								placeholder="Nome">
						</div>
					</div>
				</div>
				<select name="ranking_projeto" class="custom-select" id="inputGroupSelect01">
					<c:choose>
						<c:when test="${!option1}">
							<option id="option1" value="1">Ranking 1</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option2}">
							<option id="option2" value="2">Ranking 2</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option3}">
							<option id="option3" value="3">Ranking 3</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option4}">
							<option id="option4" value="4">Ranking 4</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option5}">
							<option id="option5" value="5">Ranking 5</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option6}">
							<option id="option6" value="6">Ranking 6</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option7}">
							<option id="option7" value="7">Ranking 7</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option8}">
							<option id="option8" value="8">Ranking 8</option>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${!option9}">
							<option id="option9" value="9">Ranking 9</option>
						</c:when>
					</c:choose>
					<option id="option0" value="0">Ranking 0</option>
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
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="get" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm" class="contactForm">
					<input type="hidden" name="acao" value="alternarRankingProjetos" type="hidden">
					<input name="id_projeto" id="id_projeto" type="hidden">
					<div class="modal-body">
						<select name="ranking_projeto" class="form-control" id="sel1">
							<c:if test="${option1}">
								<option id="option1" value="1">Ranking 1</option>
							</c:if>
							<c:if test="${option2}">
								<option id="option2" value="2">Ranking 2</option>
							</c:if>
							<c:if test="${option3}">
								<option id="option3" value="3">Ranking 3</option>
							</c:if>
							<c:if test="${option4}">
								<option id="option4" value="4">Ranking 4</option>
							</c:if>
							<c:if test="${option5}">
								<option id="option5" value="5">Ranking 5</option>
							</c:if>
							<c:if test="${option6}">
								<option id="option6" value="6">Ranking 6</option>
							</c:if>
							<c:if test="${option7}">
								<option id="option7" value="7">Ranking 7</option>
							</c:if>
							<c:if test="${option8}">
								<option id="option8" value="8">Ranking 8</option>
							</c:if>
							<c:if test="${option9}">
								<option id="option9" value="9">Ranking 9</option>
							</c:if>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function putId(id){
			jQuery("#id_projeto").val(id);
		}
	</script>
</body>
</html>