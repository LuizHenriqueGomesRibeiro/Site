<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="position: relative; width: 90vw; margin: auto;">
	<div id="formulario">
		<form enctype="multipart/form-data" method="post" action="<%=request.getContextPath()%>/ServletProjetos" id="projeto" name="contactForm" class="contactForm">
			<input type="hidden" name="id_projeto" id="id_projeto" value="${projeto.id}">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label class="label" for="name">Nome do projeto:</label> 
						<input type="text" class="form-control" name="nome_projeto" id="name" placeholder="Nome" value="${projeto.nome}">
					</div>
				</div>
			</div>
			<div id="select"></div>
			<select name="ranking_projeto" class="custom-select" id="inputGroupSelect01">
				<c:forEach items="${options}" var="ml" varStatus="status">
					<c:choose>
						<c:when test="${ml}">
							<c:choose>
								<c:when test="${projeto.ranking == status.index + 1}">
									<option selected="selected" id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1} (em utilização)</option>
								</c:when>
								<c:otherwise>
									<option id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1} (em utilização)</option>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${projeto.ranking == status.index + 1}">
									<option selected="selected" id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1}</option>
								</c:when>
								<c:otherwise>
									<option id="option${status.index + 1}" value="${status.index + 1}">Ranking ${status.index + 1}</option>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 
				<c:choose>
					<c:when test="${option1}">
						<option id="option1" value="1">Ranking 1 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option1" value="1">Ranking 1</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option2}">
						<option id="option2" value="2">Ranking 2 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option2" value="2">Ranking 2</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option3}">
						<option id="option3" value="3">Ranking 3 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option3" value="3">Ranking 3</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option4}">
						<option id="option4" value="4">Ranking 4 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option4" value="4">Ranking 4</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option5}">
						<option id="option5" value="5">Ranking 5 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option5" value="5">Ranking 5</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option6}">
						<option id="option6" value="6">Ranking 6 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option6" value="6">Ranking 6</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option7}">
						<option id="option7" value="7">Ranking 7 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option7" value="7">Ranking 7</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option8}">
						<option id="option8" value="8">Ranking 8 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option8" value="8">Ranking 8</option>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${option9}">
						<option id="option9" value="9">Ranking 9 (em utilização)</option>
					</c:when>
					<c:otherwise>
						<option id="option9" value="9">Ranking 9</option>
					</c:otherwise>
				</c:choose>
				 -->
				<option id="option0" value="0">Ranking 0</option>
			</select>
			<div class="form-group">
				<label class="label" for="name">Sobre o projeto:</label> 
				<textarea name="sobre_projeto" style="width: 100%; height: 150px;" value="${projeto.sobre}"></textarea>
			</div>
			<div class="form-group">
				<label class="label" for="email">Foto principal:</label>
				<div style="position: relative;">
					<img style="position: absolute; width: 624px; height: 280px; top: 30px; left: 80px; object-fit: cover; 
					background-color: antiquewhite;" alt="Imagem" id="foto64" src="${projeto.fotoprojeto}">
				</div>
			</div>
			<input style="width: 624px;" type="file" accept="image/*" onchange="visualizarImg('foto64', 'foto')" class="form-control inputImg" name="foto" id="foto">
			<div style="position: relative; margin-bottom: 180px; margin-top: 340px; margin-bottom: 315px;" class="row">
				<div class="col">
					<div class="form-group">
						<label class="label" for="email">Foto secundária 1:</label>
						<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto641" class="img" src="${projeto.foto1}">
						</div>
					</div>
					<input type="file" accept="image/*" onchange="visualizarImg('foto641', 'foto1')" class="form-control inputImg" name="foto1" id="foto1">
				</div>
				<div class="col">
					<div class="form-group"> 
						<label class="label" for="email">Foto secundária 2:</label>
						<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto642" class="img" src="${projeto.foto2}">
						</div>
					</div>
					<input type="file" accept="image/*" onchange="visualizarImg('foto642', 'foto2')" class="form-control inputImg" name="foto2" id="foto2">
				</div>
				<div class="col">
					<div class="form-group">
						<label class="label" for="email">Foto secundária 3:</label>
						<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto643" class="img" src="${projeto.foto3}">
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
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto644" class="img" src="${projeto.foto4}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto644', 'foto4')" class="form-control inputImg" name="foto4" id="foto4">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 5:</label>
							<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto645" class="img" src="${projeto.foto5}">
						</div>
					</div>
					<input type="file" accept="image/*" onchange="visualizarImg('foto645', 'foto5')" class="form-control inputImg" name="foto5" id="foto5">
				</div>
				<div class="col">
					<div class="form-group">
						<label class="label" for="email">Foto secundária 6:</label>
						<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto646" class="img" src="${projeto.foto6}">
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
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto647" class="img" src="${projeto.foto7}">
							</div>
						</div>
						<input type="file" accept="image/*" onchange="visualizarImg('foto647', 'foto7')" class="form-control inputImg" name="foto7" id="foto7">
					</div>
					<div class="col">
						<div class="form-group">
							<label class="label" for="email">Foto secundária 8:</label>
							<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto648" class="img" src="${projeto.foto8}">
						</div>
					</div>
					<input type="file" accept="image/*" onchange="visualizarImg('foto648', 'foto8')" class="form-control inputImg" name="foto8" id="foto8">
				</div>
				<div class="col">
					<div class="form-group">
						<label class="label" for="email">Foto secundária 9:</label>
						<div style="position: relative;">
							<img alt="Imagem" style="width: 312px; height: 312px;" id="foto649" class="img" src="${projeto.foto9}">
						</div>
					</div>
					<input type="file" accept="image/*" onchange="visualizarImg('foto649', 'foto9')" class="form-control inputImg" name="foto9" id="foto9">
				</div>
			</div>
			<button>Salvar</button>
		</form>
	</div>
</div>
<script type="text/javascript">

</script>