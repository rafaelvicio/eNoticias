<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<header>

<div class="container">
	<span class="bar hide"></span>
	<a href="index-2.html" class="logo"><img src="/resources/img/logo.png" alt=""></a>
	<nav>
		<div class="nav-control">
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/noticias/">Notícias</a></li>
				<li class="dropdown mega-dropdown">
					<a href="/jogo/">Jogos</a>
					<ul class="dropdown-menu mega-dropdown-menu category">
						<li class="col-md-3">
							<a href="games-single.html">
								<img src="/resources/img/game/menu-1.jpg" alt="">
								<div class="caption">
									<span class="label label-warning">PC</span>
									<h3>Assassin's Creed Syndicate</h3>
									<p>Lorem ipsum dolor sit amet, adipise elit.</p>
								</div>
							</a>
						</li>
						<li class="col-md-3">
							<a href="games-single.html">
								<img src="/resources/img/game/menu-2.jpg" alt="">
								<div class="caption">
									<span class="label label-primary">PS4</span>
									<h3>Last of Us Remastered</h3>
									<p>Lorem ipsum dolor sit amet, adipise elit.</p>
								</div>
							</a>
						</li>
						<li class="col-md-3">
							<a href="games-single.html">
								<img src="/resources/img/game/menu-3.jpg" alt="">
								<div class="caption">
									<span class="label label-success">Xbox</span>
									<h3>Max Payne 3</h3>
									<p>Lorem ipsum dolor sit amet, adipise elit.</p>
								</div>
							</a>
						</li>
						<li class="col-md-3">
							<a href="games-single.html">
								<img src="/resources/img/game/menu-4.jpg" alt="">
								<div class="caption">
									<span class="label label-danger">Steam</span>
									<h3>Hitman Absolution</h3>
									<p>Lorem ipsum dolor sit amet, adipise elit.</p>
								</div>
							</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">Campeonatos</a>
					<ul class="dropdown-menu default">
						<li class="dropdown-submenu">
							<a href="blog-large.html"><i class="fa fa-align-justify"></i> Eliminação Direta</a>
						</li>
						<li class="dropdown-submenu">
							<a href="blog-medium.html"><i class="fa fa-list-ul"></i> Torneio Suiço</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">Ranking</a>
					<ul class="dropdown-menu default">
						<li class="dropdown-submenu">
							<a href="blog-large.html"><i class="fa fa-align-justify"></i> League of Legends</a>
						</li>
						<li class="dropdown-submenu">
							<a href="blog-medium.html"><i class="fa fa-list-ul"></i> Counter-Strike: Global Offensive</a>
						</li>
						<li class="dropdown-submenu">
							<a href="blog-large.html"><i class="fa fa-align-justify"></i> Dota 2</a>
						</li>
						<li class="dropdown-submenu">
							<a href="blog-large.html"><i class="fa fa-align-justify"></i> Hearthstone: Heroes of Warcraft</a>
						</li>
						<li class="dropdown-submenu">
							<a href="blog-large.html"><i class="fa fa-align-justify"></i> Overwatch</a>
						</li>
					</ul>
				</li>
				<li><a href="videos.html">Ajuda</a></li>
				<li><a href="videos.html">Fórum</a></li>
				<li><a href="gallery.html">Loja</a></li>
				<li><a href="contact.html">Contato</a></li>
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
				<li><a href="#"><i class="fa fa-user"></i> Perfil</a></li>
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