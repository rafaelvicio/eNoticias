<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/cadastro"></c:url>

<!-- wrapper -->
<div id="wrapper">
	<section class="hero hero-panel" style="background-image: url(resources/img/cover/cover-register.jpg);">
		<div class="hero-bg"></div>
		<div class="container relative">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 pull-none margin-auto">
					<div class="panel panel-default panel-login">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-users"></i> Cadastro de jogador</h3>
						</div>
						<div class="panel-body">
							<a class="btn btn-block btn-social btn-facebook"><i class="fa fa-facebook"></i> Cadastrar com o Facebook</a>
							<div class="separator"><span>ou</span></div>
							<form:form action="${actionAdicionar}" method="post" modelAttribute="usuario">
								<div class="form-group input-icon-left">
									<i class="fa fa-user"></i>
									<form:input path="username" cssClass="form-control" placeholder="Usuário" />
								</div>


							<div class="form-group input-icon-left">
								<i class="fa fa-lock"></i>
								<form:password path="password" cssClass="form-control" placeholder="Senha"/>
							</div>

							<input type="submit" value="Cadastrar!" class="btn btn-primary btn-block />

								<div class="form-actions">
									<div class="checkbox checkbox-primary">
										<input type="checkbox" id="checkbox">
										<label for="checkbox">Li e aceito os termos de uso.</label>
									</div>
								</div>
							</form:form>
						</div>
						<div class="panel-footer">
							Ja tem uma conta? <a href="login.html">Faça login!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- /#wrapper -->