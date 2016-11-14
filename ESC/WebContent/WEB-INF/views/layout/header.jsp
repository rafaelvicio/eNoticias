<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">TreinaWeb Spring MVC</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal" />
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Noticias<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ESC/noticias/">Todas</a></li>							
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Times<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="/ESC/time/cadastro">Cadastro de time</a></li>
						<li><a href="/ESC/time">Meus times</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Álbuns<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ESC/albuns/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/ESC/albuns/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Músicas<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ESC/musicas/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/ESC/musicas/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Usuários<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ESC/usuarios/listar">Listar</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="/ESC/usuarios/adicionar">Cadastrar</a></li>
							</sec:authorize>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Suporte<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ESC/usuarios">Meus chamados</a></li>
							<li><a href="/ESC/suporte/abrir">Abrir chamado</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Bem-vindo, ${principal.username }<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="/ESC/administracao/">Painel de Administrador</a></li>
						</sec:authorize>
						<li><a href="/ESC/painel/">Painel</a></li>
						<li><a href="/ESC/perfil/">Perfil</a></li>
						<li><a href="/ESC/configuracoes/">Configurações</a></li>
							<li><a href="/ESC/logout">Sair</a></li>
						</ul></li>
				</ul>
			</div>
		</sec:authorize>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>