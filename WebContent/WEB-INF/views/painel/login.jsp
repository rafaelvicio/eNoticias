<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- wrapper -->
<div id="wrapper">
	<section class="hero hero-panel" style="background-image: url(../resources/img/cover/cover-register.jpg);">
		<div class="hero-bg"></div>
		<div class="container relative">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 pull-none margin-auto">
					<div class="panel panel-default panel-login">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-user"></i> Faça seu login</h3>
						</div>
						<div class="panel-body">
							<a class="btn btn-block btn-social btn-facebook"><i class="fa fa-facebook"></i> Conectar com Facebook</a>
							<div class="separator"><span>ou</span></div>
							<form action="/login" method="post">
								<div class="form-group input-icon-left">
									<i class="fa fa-user"></i>
									<input type="text" name="username" class="form-control" placeholder="Usuário">
								</div>
								<div class="form-group input-icon-left">
									<i class="fa fa-lock"></i>
									<input type="password" name="password" class="form-control" placeholder="Senha">
								</div>

								<input type="submit" value="Fazer login" class="btn btn-primary btn-block" />

								<div class="form-actions">
									<div class="checkbox checkbox-primary">
										<input type="checkbox" id="checkbox">
										<label for="checkbox">Lembrar-me</label>
									</div>
								</div>
							</form>
						</div>
						<div class="panel-footer">
							Ainda não tem conta? <a href="/cadastro">Faça seu cadastro</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>