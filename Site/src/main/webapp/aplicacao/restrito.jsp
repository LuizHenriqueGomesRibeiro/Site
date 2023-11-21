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
  <link rel="stylesheet" href="../estilos/restrito.css">
</head>
<body>
	<div class="login-form">
	  <form action="<%=request.getContextPath()%>/ServletLogin" method="get" name="formularioLogin">
	  	<input type="hidden" value="<%=request.getAttribute("url")%>" name="url">
	    <h1>Login</h1>
	    <input type="hidden" value="<%=request.getParameter("url")%>" name="url">
	    <input type="hidden" name="acao" value="validar">
	    <div class="content">
	      <div class="input-field">
	        <input id="email" name="email" type="email" placeholder="Email" autocomplete="nope">
	      </div>
	      <div class="input-field">
	        <input id="senha" name="senha" type="password" placeholder="Senha" autocomplete="new-password">
	      </div>
	    </div>
	    <div class="action">
	      <button>Entrar</button>
	    </div>
	    <p>${mensagem}</p>
	  </form>
	</div>
	<script type="text/javascript">
	
	let form = document.querySelecter('form');

	form.addEventListener('submit', (e) => {
	  e.preventDefault();
	  return false;
	});
	</script>
</body>
</html>