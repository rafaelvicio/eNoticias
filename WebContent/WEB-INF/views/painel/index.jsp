<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />

	<!-- Page Heading
	================================================== -->
	<div class="page-heading">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<h1 class="page-heading__title">Painel <span class="highlight">de controle</span></h1>
					<ol class="page-heading__breadcrumb breadcrumb">
						<li><a href="_soccer_index.html">Home</a></li>
						<li><a href="_soccer_shop-list.html">Painel</a></li>
						<li class="active">Sua Conta</li>
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
							<h4>Painel de Controle</h4>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<a href="/administracao/" class="btn btn-default btn-outline btn-xs card-header__button">Administração</a>
							</sec:authorize>
						</header>
						<div class="card__content">
							<nav class="df-account-navigation">
								<ul>
									<li class="df-account-navigation--link">
										<a href="painel.html">Pessoal</a>
									</li>
									<li class="df-account-navigation--link">
										<a href="painel-seguranca.html">Segurança</a>
									</li>
									<li class="df-account-navigation--link">
										<a href="painel-jogo.html">Contas</a>
									</li>
									<li class="df-account-navigation--link">
										<a href="painel-time.html">Times</a>
									</li>
									<li class="df-account-navigation--link">
										<a href="painel-social.html">Social</a>
									</li>
									<li class="df-account-navigation--link">
										<a href="#">Sair</a>
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
							<h4>Informações Pessoais</h4>
						</div>
						<div class="card__content">
							<p>Bem-vindo, ${principal.username}</p>
						</div>
					</div>
					<!-- Personal Information / End -->
				</div>
			</div>
		</div>
	</div>

	<!-- Content / End -->

</sec:authorize>