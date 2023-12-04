<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
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
  <link rel="stylesheet" href="estilos/style.css">
  <link rel="stylesheet" href="estilos/style2.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
  <style type="text/css">
	.loader {
		width: 148px;
		height: 148px;
		border-radius: 50%;
		display: inline-block;
		border-top: 3px solid #FFF;
		border-right: 3px solid transparent;
		box-sizing: border-box;
		animation: rotation 1s linear infinite;
	}
	
	@keyframes rotation {
	  	0% {
	    	transform: rotate(0deg);
	  	}
	  	100% {
	    	transform: rotate(360deg);
	  	}
	} 
	
</style>
</head>
<body onload="loading();">
	<div style="background-color: #C88246; width: 100vw; height: 100vh;" id="carregando">
		<div style="display: flex; justify-content: center; align-items: center; height: 100vh;">
			<div style="position: absolute;" class="loader"></div>
			<img alt="" style="width: 140px; height: 140px; position: absolute;" src="imagens/thumbnail_LOGO COLORIDA.png"/>
		</div>
	</div>
	<div style="display: none;" id="carregado">
		<jsp:include page="includes/superbar.jsp"></jsp:include>
		<div>
			<div style="position: relative; top: -50px;">
				<div style="height: calc(100vh - 100px); position: relative; top: 50px;" class="carousel">
					<ul style="position: relative;" class="panes">
						<c:forEach items="${projetos}" var="ml" varStatus="status">
							<c:if test="${status.index < 5}">
		           				<li id="s1"><img src="${ml.fotoprojeto}"></li>
		        			</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div style="position: relative;">
				<ul class="da">
					 <c:forEach items="${projetos}" var="ml" varStatus="status">
					 	<c:if test="${ml.id != null}">
					 		<li>
								<a href="<%=request.getContextPath()%>/ServletProjetos?acao=carregarProjetoIndex&ranking_projeto=${ml.ranking}">
									<figure>
										<img class="da" src='${ml.foto1}' alt='1'>
										<figcaption>${ml.nome}</figcaption>
									</figure>
								</a>
							</li>
					 	</c:if>
					 </c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function () {
			$("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
		});
		
		function loading(){
			jQuery("#carregando").remove();
			jQuery("#carregado").show();
		}
	</script>
</body>
</html>