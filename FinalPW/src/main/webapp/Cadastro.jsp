
<html>
	<meta charset = "UTF-8">
	<head>
		<title>Restaurant Booking</title>
		<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<link href="web/css/theme.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script type="text/javascript" src="web/js/jquery.min.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
		<!--  jquery plguin -->
	    <script type="text/javascript" src="web/js/jquery.min.js"></script>
	<!--start slider -->
	    <link rel="stylesheet" href="web/css/fwslider.css" media="all">
		<script src="web/js/jquery-ui.min.js"></script>
		<script src="web/js/css3-mediaqueries.js"></script>
		<script src="web/js/fwslider.js"></script>
	<!--end slider -->
				<script  language="javascript">
	
	function valida_dados (nomeform){
		 if (nomeform.nome.value=="")
		    {
		        alert ("Por favor digite o nome.");
		        return false;
		    }

		    if (nomeform.email.value=="" || nomeform.email.value.indexOf('@', 0) == -1 || nomeform.email.value.indexOf('.', 0) == -1)
		    {
		        alert ("E-mail invalido.");
		        return false;
		    }
			 if (nomeform.senha.value=="") {
		        alert ("Por favor digite uma senha.");
		        return false;     
			}
			 if (nomeform.rsenha.value=="") {
				  alert ("Por favor repita a senha.");
				  return false;
			 }
			if (nomeform.senha.value != nomeform.rsenha.value){
			   alert ("Os campos das senhas estão diferentes.");
			   return false;
		   }
		return true;
		}
	</script>


	</head>
	
	<body>


		<script>
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '1577814659163295',
		      xfbml      : true,
		      version    : 'v2.3'
		    });
		  };
		
		  (function(d, s, id){
		     var js, fjs = d.getElementsByTagName(s)[0];
		     if (d.getElementById(id)) {return;}
		     js = d.createElement(s); js.id = id;
		     js.src = "//connect.facebook.net/pt_BR/sdk.js";
		     fjs.parentNode.insertBefore(js, fjs);
		   }(document, 'script', 'facebook-jssdk'));
		</script>
		<%  
		if(request.getAttribute("ErroAoLogar")=="erro"){
		%>
		<script>
			alert("O EMAIL OU A SENHA NÃO ESTÃO CORRETOS!");
	    	
   		 </script>
		<%} 
		if(request.getAttribute("Cadastrar")=="UsuarioJaExite"){
		%>
		<script>
			alert("ESSE EMAIL JÁ ESTÁ SENDO USADO !");
	    	
   		 </script>
		<%} 
		if(request.getAttribute("Cadastrar")=="sucesso"){
		%>
		<script>
			alert("Cadastrado com sucesso!");
	    	
   		 </script>
		<%} %>


	
		<!----start-container----->
		<div class="navbar">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo"><a href="index.jsp"><img src="web/images/logo.png" alt=""/></a></div>
					</div>
					<div class="col-md-8">					
	 					<nav class="navbar navbar-default" role="navigation">
						  <div class="container-fluid">
						    <!-- Brand and toggle get grouped for better mobile display -->
						    <div class="navbar-header"><span class="text-left"><a href="#">MENU</a></span>
						      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						      </button>						   
						    </div>					
						    <!-- Collect the nav links, forms, and other content for toggling -->
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						      <ul class="nav navbar-nav">
						      	 <li>
						         <div class="btn-group show-on-hover">
							          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Cozinhas<span class="caret"></span>
							          </button>
							          <ul class="dropdown-menu" role="menu">
							            <li><a href="cozinha.jsp">Todas</a></li>
							            <li><a href="cozinha.jsp">Japonesa</a></li>
							            <li><a href="cozinha.jsp">Mexicana</a></li>						            
							            <li><a href="#">Vegetariana</a></li>
							          </ul>
							        </div>						          
						        </li>
						        <li><a href="about.jsp">Sobre</a></li>
						        <li><a href="contact.jsp">Contato</a></li>
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->						
						</nav>
					</div>
					<!----start-images-slider---->	
				  <!-- Single button -->
				</div>

			</div>
        </div>
        </div>
        
        <!--Cadastre-se-->
        <div class="container">
        <div class="main">
	       <div class="container"> 
	       		<div class="row">
	       			<div class="col-md-6" style="border-right: 1px solid #4B5456;">
	       				<div class="alert alert-warning">
				        	<div class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true"></div>
				        	<p class="text-center">A maneira mais fácil de se cadastrar</p>
				        </div>
				        <div style="margin-top:3%; margin-bottom:3%; border: 1px solid #4B5456;"></div>
				        <form class="form-group" action="Servlet"  onSubmit="return valida_dados(this)">
				        	<div class="row">
					        	<div class="col-md-6">
					        		<label for="nome"><strong style="color:red; font-size:18px;">*</strong>Nome</label>
					        		<input type="text" class="form-control" name="nome" placeholder="Seu Nome" required="">
					        	</div>
					        	<div class="col-md-6">
					        		<label for="unome">Sobrenome</label>
					        		<input type="text" class="form-control" name="sobrenome"> 
					        	</div>
					        </div>
				        	<div class="row">
				        		<div class="col-md-6">
				        			<label for="email" >
				        			<strong style="color:red; font-size:18px;">*</strong>Email</label>
				        			<input type="text" class="form-control" name="email" 
				        			placeholder="ex: gafanhoto@hotmail.com" required="">
				        		</div>
				        	</div>
				        	<div class="row">
				        		<div class="col-md-6">
				        			<label for="genero">Genero M/F</label>
				        			<input type="text" class="form-control" name="genero">
				        		</div>
				        	</div>
				        	<div class="row">
				        		<div class="col-md-6">
				        			<label for="dataNas">Data de nascimento 00/00/0000</label>
				        			<input type="text" class="form-control" name="dataNas">
				        		</div>
				        	</div>
				        	<div class="row">
				        		<div class="col-md-6">
				        			<label for="enderec">Endereço</label>
				        			<input type="text" class="form-control" name="enderec">
				        		</div>
				        	</div>
				        	<div class="row">
				        		<div class="col-md-6">
				        			<label for="telefone">Telefone (00) 0000-0000</label>
				        			<input type="text" class="form-control" name="telefone">
				        		</div>
				        	</div>
				        	<div class="row">
					        	<div class="col-md-6">
					        		<label for="senha"><strong style="color:red; font-size:18px;">*</strong>Senha</label>
					        		<input type="password" class="form-control" name="senha"placeholder="Digite uma senha"required="">
					        	</div>
					        	<div class="col-md-6">
					        		<label for="rsenha"><strong style="color:red; font-size:20px;">*</strong>Repita a senha</label>
					        		<input type="password" class="form-control" name="rsenha" placeholder="Repita a senha" required=""> 
					        	</div>
					        </div>
					        <div class="row">
				        		<div class="col-md-6 col-md-offset-3">
				        			<input type="submit" name="op" class="form-control btn btn-primary" value="Cadastre-se Já!"> 
				        		</div>
				        	</div>
				        </form>
	       			</div>
	       			<div class="col-md-5 col-md-offset-1">
		        		<div class="alert alert-warning ">
				        	<div class="fb-login-button text-center" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true"></div>
				        	<p class="text-center">Faça seu login!</p>
				        </div>
				        <div style="margin-top:3%; margin-bottom:3%; border: 1px solid #4B5456;"></div>
				        <form  class="form-group" action="Servlet">
				        	<div class="row">
					        	<div class="col-md-11">
					        		<label for="email">E-mail</label>
					        		<input type="text" class="form-control" name="email" placeholder="Seu Email" required="">
					        	</div>
					        	<div class="col-md-11">
					        		<label for="seha">Senha</label>
					        		<input type="password" class="form-control" name="senha" placeholder="Sua Senha"required=""> 
					        	</div>
					        </div>
					       
					        <div class="row">
				        		<div class="col-md-6 col-md-offset-3">
				        			<input type="submit" name = "op" class="form-control btn btn-success" value="Login!">
				        		</div>
				        	</div>
				        	
				        </form>
		        	</div>
		        </div>
			</div>
		</div>
		</div>
  <!-- Fim do Cadastro -->      
       <div class="footer">
		<div class="container">
			 <div class="row">
			 	<div class="col-md-12">
			 		<ul class="list-inline pull-left">
			 		<li><a href="#">Termos de serviço</a></li>
			 			<li><a href="#">Política de Privacidade</a></li>
			 			<li><a href="contact.jsp">Contato</a></li>
			 			<li><a href="cadastroRestaurante.jsp">Você tem um restaurante?</a></li>
			 		</ul>
			 		<!-- <form class="navbar-form pull-right" role="search">
				        <div class="form-group">
				        <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <button type="Find" class="btn btn-default">Find</button>
				    </form> -->
			 	</div>
			 </div>	
			 <div class="copy-right text-center">
				<p>&#169Copyright 2014 All Rights Reserved  Template <a href="http://w3layouts.com/">  w3layouts.com</a></p>	
			</div>
			
		</div>
		
	</div>
		
    </body>
</html>