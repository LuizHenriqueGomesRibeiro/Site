<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="position: relative; margin: auto;">
	<div style="margin-top: 20px;">
		<c:if test="${not empty projetos}">
			<h3 style="position: relative; left: 20px;">Tabela de projetos em utilização:</h3>
			<div style="width: 634px; margin: 10px; position: relative; margin: auto;">
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
		</c:if>
		<c:if test="${not empty projetosDesranqueados}">
		<h3 style="position: relative; left: 20px;">Banco de projetos:</h3>
			<div style="width: 634px; margin: 10px; position: relative; margin: auto;">
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
								<td><button id="botao" data-toggle="modal" data-target="#exampleModal" onclick="putId(${ml.id})">Ranquear</button></td>
								<td><c:out value="${ml.nome}"></c:out></td>
								<td><img width="70px;" height="70px;" alt="" src="${ml.fotoprojeto}"></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoEditar&id_projeto=${ml.id}">Editar</a></td>
								<td><a href="<%=request.getContextPath()%>/ServletProjetos?acao=excluirProjeto&id_projeto=${ml.id}">Excluir</a></td>
							</tr>												
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
	</div>
</div>