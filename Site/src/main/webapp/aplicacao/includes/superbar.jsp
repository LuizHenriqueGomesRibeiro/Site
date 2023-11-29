<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="height: 100px; width: 100vw;">
	<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
		<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
		<div style="position: relative; top: -50px; left: 470px;">
			<a class="navbar-brand" href="#">Studiouna</a>
			<a class="navbar-brand" href="#">Projetos</a>
			<a class="navbar-brand" href="#">Escritório</a>
			<a class="navbar-brand" href="#">Mídia</a>
			<a class="navbar-brand" href="<%=request.getContextPath()%>/ServletProjetos?acao=contato&filtrarCarregamento=carregados">Contato</a>
			<a class="navbar-brand" href="<%=request.getContextPath()%>/ServletProjetos?acao=areaRestrita&filtrarCarregamento=carregados">Área restrita</a>
		</div>
	</div>
</div>