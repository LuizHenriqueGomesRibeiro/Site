<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
</head>
	<body style="height: 100vh;">
		<div style="display: flex; height: 100%;">
			<div style="height: 100vw; width: 225px; position: fixed; background-color: #E6E6E6">
				<div style="margin: 6px;">
					<div style="margin-bottom: 10px;">
						<a href="<%=request.getContextPath()%>/ServletProjetos?acao=acessarProjetosServidor">
							<button type="button" class="btn btn-success">Configurações de projetos</button>
						</a>
					</div>
					<div style="margin-bottom: 10px;">
						<a href="<%=request.getContextPath()%>/ServletLogin?acao=acessarConfiguracoesUsuario">
							<button type="button" class="btn btn btn-warning">Configurações do usuário</button>
						</a>
					</div>
				</div>
			</div>
			<div style="width: calc(100% - 225px); position: relative; left: 225px; height: 100%;">
				<div style="width: 90%; position: relative; margin: auto; top: 45px; height: 300px; overflow: auto;">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>nome</th>
								<th>mensagem</th>
								<th>email</th>
								<th>Selecionar para ler</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${perguntas}" var="ml">
								<tr>
									<td><c:out value="${ml.nome}"></c:out></td>
									<td><c:out value="${ml.mensagem}"></c:out></td>
									<td><c:out value="${ml.email}"></c:out></td>
									<td>
										<button class="btn btn-primary">
											<a style="list-style: none; color: white; text-decoration: none;" 
											href="<%=request.getContextPath()%>/ServletFormulario?acao=imprimirPerguntaTela&id_mensagem=${ml.id}">Selecionar</a>
										</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<c:if test="${abrirCaixaPergunta == true}">
					<div style="width: 90%; position: relative; margin: auto; height: calc(100% - 300px); top: 45px;">
						<div class="card" style="width: 100%;">
							<div class="card-header">Pergunta</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">${pergunta.nome}</li>
								<li class="list-group-item">${pergunta.email}</li>
								<li class="list-group-item">${pergunta.data}</li>
								<li class="list-group-item">${pergunta.mensagem}</li>
								<li class="list-group-item">
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Marcar como visto</button>
									
								</li>
							</ul>
						</div>
					</div>
				</c:if>
				<div>
					<p>${mensagem}</p>
				</div>
			</div>
		</div>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Exclusão de pergunta:</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="<%=request.getContextPath()%>/ServletFormulario" method="post" name="formularioPergunta">
						<div class="modal-body">
							<p>Quer mesmo marcar essa pergunta como vista?</p>
							<p style="color: red;">* Não pode ser desfeito.</p>
							<input value="marcarComoAtendido" name="acao" type="hidden">
							<input value="${pergunta.id}" name="id_mensagem" type="hidden">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
							<button type="submit" class="btn btn-primary">Marcar como visto</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function selecionarPerguntaVer(id){
			
		}
	</script>
</html>