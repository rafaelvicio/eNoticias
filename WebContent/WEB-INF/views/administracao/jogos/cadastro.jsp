<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/administracao/jogos/cadastro"></c:url>

<!-- Page Heading
================================================== -->
<div class="page-heading">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h1 class="page-heading__title">Painel <span class="highlight">de Administração</span></h1>
				<ol class="page-heading__breadcrumb breadcrumb">
					<li><a href="_soccer_index.html">Home</a></li>
					<li><a href="_soccer_shop-list.html">Painel</a></li>
					<li class="active">Administração</li>
				</ol>
			</div>
		</div>
	</div>
</div>

<!-- Content
================================================== -->
<div class="site-content">
	<div class="container">

		<div class="row">

			<div class="col-md-4">

				<!-- Account Navigation -->
				<div class="card">
					<header class="card__header card__header--has-filter">
						<h4>Painel de Administração</h4>
						<a href="/painel/" class="btn btn-default btn-outline btn-xs card-header__button">Painel </a>
					</header>
					<div class="card__content">
						<nav class="df-account-navigation">
							<ul>
								<li class="df-account-navigation--link">
									<a href="/administracao/jogadores">Jogadores</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/times">Times</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/campeonatos">Campeonatos</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- Account Navigation / End -->

				<!-- Account Navigation -->
				<div class="card">
					<div class="card__header">
						<h4>Painel de Notícias</h4>
					</div>
					<div class="card__content">
						<nav class="df-account-navigation">
							<ul>
								<li class="df-account-navigation--link">
									<a href="/administracao/noticias">Notícias</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/jogos">Jogos</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/categorias">Categorias</a>
								</li>
								<li class="df-account-navigation--link">
									<a href="/administracao/desenvolvedoras">Desenvolvedoras</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- Account Navigation / End -->

			</div>

			<div class="col-md-8">

				<!-- Personal Information -->
				<div class="card card--lg">
					<div class="card__header">
						<h4>Cadastrar Jogo</h4>
					</div>
					<div class="card__content">
						<form:form action="${actionAdicionar}" method="post" modelAttribute="jogo" cssClass="df-personal-info">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="nome">Nome</label>
										<form:input path="nome" cssClass="form-control"/>
										<form:errors path="nome" cssStyle="color: red;"></form:errors>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="url">Banner da Jogo</label>
										<form:input id="banner" path="banner" cssClass="form-control" placeholder="Link Banner"/>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="nome">Site do Jogo</label>
										<form:input path="site" cssClass="form-control"/>
										<form:errors path="site" cssStyle="color: red;"></form:errors>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="account-city">Categoria</label>
										<select name="account-city" id="account-city" class="form-control">
											<option value="0">Escolha a categoria...</option>
											<option value="1">MOBA</option>
											<option value="1">FPS</option>
											<option value="1">RTS</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="account-city">Desenvolvedora</label>
											<select name="account-city" id="account-city" class="form-control">
												<option value="0">Escolha a desenvolvedora...</option>
												<option value="1">Valve</option>
												<option value="2">Riot Games</option>
												<option value="3">Ubisoft</option>
											</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="nome">Descrição do Jogo</label>
											<form:input path="descricao" cssClass="form-control"/>
											<form:errors path="descricao" cssStyle="color: red;"></form:errors>
										</div>
									</div>
								</div>

								<div class="form-group--submit">
									<input type="submit" value="Cadastrar Jogo" class="btn btn-default btn-lg btn-block" />
								</div>

						</form:form>
					</div>
				</div>
				<!-- Personal Information / End -->
			</div>
		</div>
	</div>
</div>

<!-- Content / End -->