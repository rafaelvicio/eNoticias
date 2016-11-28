<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<header>

<div class="container">
	<span class="bar hide"></span>
	<a href="index-2.html" class="logo"><img src="/resources/img/logo.png" alt=""></a>
	<nav>
		<div class="nav-control">
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/noticias/">Notícias</a></li>
				<li><a href="/jogos/">Jogos</a></li>
				<li><a href="/campeonatos/">Campeonatos</a></li>
				<li><a href="/ranking/">Ranking</a></li>
				<li><a href="/suporte/">Suporte</a></li>
				<li><a href="/forum/">Fórum</a></li>
				<li><a href="/loja/">Loja</a></li>
				<li><a href="/contato/">Contato</a></li>
			</ul>
		</div>
	</nav>

	<sec:authorize access="isAnonymous()">
		<a href="/painel/login">Entrar</a> <a href="/cadastro">Cadastro</a>
	</sec:authorize>

<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />

	<div class="nav-right">
		<div class="nav-profile dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/resources/img/user/avatar.jpg" alt=""> <span>${principal.username }</span></a>
			<ul class="dropdown-menu">
				<li><a href="/perfil/"><i class="fa fa-user"></i> Perfil</a></li>
				<li><a href="#"><i class="fa fa-heart"></i> Likes <span class="label label-info">32</span></a></li>
				<li><a href="#"><i class="fa fa-gamepad"></i> Games</a></li>
				<li><a href="#"><i class="fa fa-gear"></i> Configurações</a></li>
				<li class="divider"></li>
				<li><a href="/logout"><i class="fa fa-power-off"></i> Sair</a></li>
			</ul>
		</div>

	<sec:authorize access="hasRole('ROLE_ADMIN')">

		<div class="nav-dropdown dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
			<ul class="dropdown-menu">
				<li class="dropdown-header"><i class="glyphicon glyphicon-cog"></i>Painel de Administração</li>
				<li><a href="/administracao/noticias"><i class="ion-android-list"></i>Notícias </a></li>
				<li><a href="/administracao/jogos/"><i class="ion-ios-game-controller-b"></i>Jogos </a></li>
			</ul>
		</div>

	</sec:authorize>

		<div class="nav-dropdown dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-group"></i> <span class="label label-danger">3</span></a>
			<ul class="dropdown-menu">
				<li class="dropdown-header"><i class="fa fa-group"></i> Minhas Equipes</li>
				<li><a href="#">Equipe1 <span class="label label-success">League of Legends</span></a></li>
				<li><a href="#">Equipe2 <span class="label label-primary">PS4</span></a></li>
				<li><a href="#">Equipe1 <span class="label label-warning">PC</span></a></li>
				<li class="dropdown-footer"><a href="#">Crie sua equipe</a></li>
			</ul>
		</div>
		<a href="#" data-toggle="modal-search"><i class="fa fa-search"></i></a>
	</div>

</sec:authorize>

</div>

</header>
<!-- /header -->

<div class="modal-search">
    <div class="container">
        <input type="text" class="form-control" placeholder="Faça sua pesquisa...">
        <i class="fa fa-times close"></i>
    </div>
</div><!-- /.modal-search -->