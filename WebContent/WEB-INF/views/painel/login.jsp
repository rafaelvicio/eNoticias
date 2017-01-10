<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Page Heading
================================================== -->
<div class="page-heading">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h1 class="page-heading__title">Login <span class="highlight">eSports Club</span></h1>
				<ol class="page-heading__breadcrumb breadcrumb">
					<li><a href="_soccer_index.html">Home</a></li>
					<li class="active">Login</li>
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

			<div class="col-md-5 col-md-offset-1">

				<!-- Login -->
				<div class="card">
					<div class="card__header">
						<h4>Login</h4>
					</div>
					<div class="card__content">

						<!-- Login Form -->
						<form class="modal-form" action="/login" method="post">
							<div class="form-group">
								<input type="text" name="username"  class="form-control" placeholder="Seu nome de Usuário...">
							</div>
							<div class="form-group">
								<input type="password" name="password"  class="form-control" placeholder="Sua senha...">
							</div>
							<div class="form-group form-group--pass-reminder">
								<label class="checkbox checkbox-inline">
									<input type="checkbox" id="inlineCheckbox1" value="option1" checked> Lembre-me
									<span class="checkbox-indicator"></span>
								</label>
								<a href="#">Esqueceu sua senha?</a>
							</div>
							<div class="form-group form-group--submit">
								<input type="submit" value="Entre na sua conta" class="btn btn-primary-inverse btn-block" />
							</div>
							<div class="modal-form--social">
								<h6>Ou entre com suas redes sociais:</h6>
								<ul class="social-links social-links--btn text-center">
									<li class="social-links__item">
										<a href="#" class="social-links__link social-links__link--lg social-links__link--fb"><i class="fa fa-facebook"></i></a>
									</li>
									<li class="social-links__item">
										<a href="#" class="social-links__link social-links__link--lg social-links__link--twitter"><i class="fa fa-twitter"></i></a>
									</li>
									<li class="social-links__item">
										<a href="#" class="social-links__link social-links__link--lg social-links__link--gplus"><i class="fa fa-google-plus"></i></a>
									</li>
								</ul>
							</div>
							</br>
						</form>
						<!-- Login Form / End -->

					</div>
				</div>
				<!-- Login / End -->
			</div>

			<div class="col-md-5">

				<!-- Register -->
				<div class="card">
					<div class="card__header">
						<h4>Registro</h4>
					</div>
					<div class="card__content">

						<!-- Register Form -->
						<form class="modal-form" action="/cadastro" method="post">
							<div class="form-group">
								<input type="text" name="username" class="form-control" placeholder="Entre com seu nome de usuário...">
							</div>
							<div class="form-group">
							<input type="text" name="nome" class="form-control" placeholder="Entre com seu nome...">
							</div>
							<div class="form-group">
								<input type="text" name="obrenome" class="form-control" placeholder="Entre com seu sobrenome...">
							</div>
							<div class="form-group">
								<input type="password" name="password" class="form-control" placeholder="Entre com sua senha...">
							</div>
							<div class="form-group">
								<input type="submit" value="Crie sua conta" class="btn btn-primary btn-block" />
							</div>
							<div class="form-note">Lembre-se de verificar seu e-mail para confirmar o cadastro da sua conta. </div>
						</form>
						<!-- Register Form / End -->

					</div>
				</div>
				<!-- Register / End -->
			</div>

		</div>
	</div>
</div>

<!-- Content / End -->