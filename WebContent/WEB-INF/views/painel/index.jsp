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
								<form:form action="${actionAdicionar}" method="post" modelAttribute="usuario" cssClass="df-personal-info">

								<div class="form-group form-group--upload">
									<div class="form-group__avatar">
										<img src="assets/images/samples/avatar-empty.png" alt="">
										<div class="form-group__label">
											<h6>Foto de Perfil</h6>
											<span>Tamanho Minimo 60x60px</span>
										</div>
									</div>
									<div class="form-group__upload">
										<label class="btn btn-default btn-xs btn-file">
											Upload Imagem... <input type="file" style="display: none;">
										</label>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="email">Email</label>
											<form:input id="email" path="email" cssClass="form-control" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="usuario">Usuário</label>
											<form:input id="usuario" path="username" cssClass="form-control"/>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="nome">Nome</label>
											<form:input id="nome" path="nome" cssClass="form-control"/>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="sobrenome">Sobrenome</label>
											<form:input id="sobrenome" path="sobrenome" cssClass="form-control"/>
										</div>
									</div>
								</div>

								<div class="form-group form-group--sm">
									<label for="account-address-1">Endereço Completo</label>
									<input type="text" class="form-control" value="" name="account-address-1" id="account-address-1" placeholder="Quadra 4 Rua 4 Lote 62">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" value="" name="account-address-2" id="account-address-2" placeholder="Parque Nova Friburgo A">
								</div>

								<div class="form-group">
									<label for="account-country">Estado</label>
									<select name="account-country" id="account-country" class="form-control">
										<option value="0">Escolha seu estado...</option>
										<option value="Canada">Brasília</option>
										<option value="Italy">Goiais</option>
									</select>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="account-city">Cidade</label>
											<select name="account-city" id="account-city" class="form-control">
												<option value="0">Escolha sua Cidade...</option>
												<option value="1">Brasilia</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="account-postcode">Código Postal</label>
											<input type="text" name="account-postcode" id="account-postcode" class="form-control" placeholder="7288-7003">
										</div>
									</div>
								</div>

								<div class="form-group--submit">
									<button type="submit" class="btn btn-default btn-lg btn-block">Atualizar informações</button>
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

</sec:authorize>