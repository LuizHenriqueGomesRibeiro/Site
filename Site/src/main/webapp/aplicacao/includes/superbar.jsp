<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="height: 100px; width: 100vw; background-color: #C88246">
	<div style="width: 900px; position: relative; margin: auto; height: 100px; top: 10px;">
		<img alt="" style="width: 70px; height: 70px;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
		<div style="position: relative; top: -45px; left: 432px; display: flex;">
			<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; top: -4px; left: 10px; margin-right: 20px;">
				<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 15px; top: -4px;" 
				class="navbar-brand" href="#">Projetos</a>
			</div>
			<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
				<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 12px; top: -3px;" 
				class="navbar-brand" href="#">Escritório</a>
			</div>
			<div style="border: 1px solid white; border-radius: 27px; width: 90px; height: 25px; margin-right: 20px;">
				<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; left: 16px; top: -3px;" class="navbar-brand" 
				href="<%=request.getContextPath()%>/ServletProjetos?acao=contato&filtrarCarregamento=carregados">Contato</a>
			</div>
			<div style="border: 1px solid white; border-radius: 27px; width: 100px; height: 25px; margin-right: 20px;">
				<a style="font-size: 14px; color: white; font-family: 'Quicksand', sans-serif; position: relative; top: -3px;" class="navbar-brand" 
				href="<%=request.getContextPath()%>/ServletProjetos?acao=areaRestrita&filtrarCarregamento=carregados">Área restrita</a>
			</div>
		
		</div>
	</div>
</div>