<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<c:url var="actionAdicionar" value="/cadastro"></c:url>

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
						<h4>Cadastro</h4>
					</div>
					<div class="card__content">

						<!-- Register Form -->
						<form:form action="${actionAdicionar}" method="post" modelAttribute="usuario" class="modal-form">
							<div class="form-group">
								<form:input path="username" cssClass="form-control" placeholder="Entre com seu nome de usuário..." />
							</div>
							<div class="form-group">
								<form:input path="nome" cssClass="form-control" placeholder="Entre com seu nome..." />
							</div>
							<div class="form-group">
							<form:input path="sobrenome" cssClass="form-control" placeholder="Entre com o seu sobrenome" />
							</div>
							<div class="form-group">
							<form:password path="password" cssClass="form-control" placeholder="Entre com sua senha..."/>
							</div>
							<div class="form-group">
								<input type="submit" value="Crie sua conta" class="btn btn-primary btn-block />
							</div>
							<div class="form-note">Lembre-se de verificar seu e-mail para confirmar o cadastro da sua conta. </div>
						</form>
						<!-- Register Form / End -->

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
							<form:form action="${actionAdicionar}" cssClass="modal-form" method="post" modelAttribute="usuario">
								<div class="form-group">
								<form:input path="username" cssClass="form-control" placeholder="Entre com seu nome de usuário..." />
								</div>
								<div class="form-group">
								<form:input path="nome" cssClass="form-control" placeholder="Nome" />
								</div>
								<div class="form-group">
								<form:input path="sobrenome" cssClass="form-control" placeholder="Sobrenome" />
								</div>
								<div class="form-group">
								<form:password path="password" cssClass="form-control" placeholder="Senha"/>
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