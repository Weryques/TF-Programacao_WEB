<html>
<head>
<title>Restaurant Booking</title>
<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="web/css/theme.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
			
			 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
		
		</script>
<!--webfonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300'
	rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script type="text/javascript" src="web/js/jquery.min.js"></script>
<script type="text/javascript" src="web/js/bootstrap.js"></script>
<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
<!--  jquery plguin -->
<script type="text/javascript" src="web/js/jquery.min.js"></script>


</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="header-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="logo">
							<a href="index.jsp"><img src="web/images/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-8">
						<nav class="navbar navbar-default" role="navigation">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<span class="text-left"><a href="#">MENU</a></span>
									<button type="button" class="navbar-toggle"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li>
											<div class="btn-group show-on-hover">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													Cozinhas<span class="caret"></span>
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
										  <% if(session.getAttribute("usuarioLogado")!=null){ %>
						      <li>
											<div class="btn-group show-on-hover">
												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
													${usuarioLogado}<span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="Servlet?op=Configurações">Configurações</a></li>
													<li><a href="logout.jsp" >Sair</a></li>
													
												</ul>
											</div>
										</li>
										<% }else{%>
						        <li><a href="Cadastro.jsp">Ingressar</a></li>
						        <%} %>
						      </ul>
						   
								<!-- /.navbar-collapse -->
							</div>
							<!-- /.container-fluid -->
						</nav>
					</div>
					<!----start-images-slider---->
					<!-- Single button -->
				</div>

			</div>
		</div>
	</div>
	<div class="containner" style="margin-top: 12%;">
		<div class="container">
			<div class="row">
				<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
					<A href="#">Editar Perfil</A> <A href="logout.jsp">Sair</A> <br>
					<p class=" text-info"> <script language=javascript type="text/javascript">
now = new Date
 var diaSemana; 
 if(now.getDay()==1){
	 diaSemana="Segunda Feira";
	 }
 if(now.getDay()==2){
	 diaSemana="Terça Feira";
	 }
 if(now.getDay()==3){
	 diaSemana="Quarta Feira";
	 }
 if(now.getDay()==4){
	 diaSemana="Quinta Feira";
	 }
 if(now.getDay()==5){
	 diaSemana="Sexta Feira";
	 }
 if(now.getDay()==6){
	 diaSemana="Sabado";
	 }
 if(now.getDay()==7){
	 diaSemana="Domingo";
	 }

var mes = now.getMonth() + 1;
 
document.write ("Hoje é " + diaSemana+ ",  dia " + now.getDate() + " do " + mes + " de " + now.getFullYear() )
</script>
  </p>
				</div>
				<div
					class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">${nome} ${sobrenome}</h3>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3 col-lg-3 " align="center">
									<img alt="User Pic"
										src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
										class="img-circle">
								</div>
                  
								<div class=" col-md-9 col-lg-9 ">
									<table class="table table-user-information">
										<tbody>
											<tr>
												<td>Data de nascimento</td>
												<td>${dataNas}</td>
											</tr>

											<tr>
											<tr>
												<td>Genero</td>
												<td>${genero}</td>
											</tr>
											<tr>
												<td>Endereço</td>
												<td>${enderec}</td>
											</tr>
											<tr>
												<td>Email</td>
												<td><a href="#">${email}</a></td>
											</tr>
											<td>Telefone</td>
											<td>${telefone}<br>
											</td>

											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<button type="button" class="btn btn-sm btn-warning">Editar</button> 
							<button type="button" onclick="javascript:servletD()"class="btn btn-sm btn-danger">Deletar Conta</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function servletD(){
			var r = confirm("Deseja realmente excluir a conta?");
			if (r == true) {
				//window.alert("Conta excluida com sucesso!");
				window.location.href="Servlet?op=Deletar&clienteMail=${email}";
				window.location.href="Servlet?op=Deletar&clienteMail=${email}";
			}
		}
	</script>
</body>
</html>