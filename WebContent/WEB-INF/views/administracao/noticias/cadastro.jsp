<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/administracao/noticias/cadastro"></c:url>

<div id="wrapper">
	<section class="border-bottom-1 border-grey-300 padding-10">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li><a href="index.html">Administração</a></li>
						<li><a href="#">Noticias</a></li>
						<li class="active">Cadastro</li>
					</ol>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-grey-50 padding-bottom-60">
		<div class="container">
			<div class="headline">
				<h4 class="no-padding-top">Cadastro de nova noticia <small>Preencha o formulario de cadastro para nova noticia.</small></h4>
				<div class="pull-right">
					<div class="dropdown">
						<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></a>
						<ul class="dropdown-menu pull-right">
							<li><a href="#"><i class="fa fa-edit"></i> Edit thread</a></li>
							<li><a href="#"><i class="fa fa-lock"></i> Lock thread</a></li>
							<li class="divider"></li>
							<li><a href="#"><i class="fa fa-plus"></i> New thread</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="panel panel-default margin-bottom-30">
				<div class="panel-body">

<form:form action="${actionAdicionar}" method="post" modelAttribute="noticia" cssClass="form-labe">

						<div class="form-group row">
							<label for="titulo" class="col-md-2">Titulo da Noticia</label>
							<div class="col-md-10">
								<form:input id="titulo" path="titulo" cssClass="form-control" placeholder="Titulo da Noticia"/>
							</div>
						</div>

	<div class="form-group row">
		<label for="url" class="col-md-2">URL da Noticia</label>
		<div class="col-md-10">
			<form:input id="url" path="url" cssClass="form-control" placeholder="URL da Noticia"/>
		</div>
	</div>

	<div class="form-group row">
		<label for="banner" class="col-md-2">Link Banner</label>
		<div class="col-md-10">
			<form:input id="banner" path="banner" cssClass="form-control" placeholder="Link Banner"/>
		</div>
	</div>

	<div class="form-group row">
		<label for="descricao" class="col-md-2">Descrição da Noticia</label>
		<div class="col-md-10">
			<form:input id="descricao" path="descricao" cssClass="form-control" placeholder="Descrição da Noticia"/>
		</div>
	</div>

	<div class="form-group row">
		<label for="comentario" class="col-md-2">Comentario</label>
		<div class="col-md-10">
			<form:input id="comentario" path="comentario" cssClass="form-control" placeholder="Comentario da Noticia"/>
		</div>
	</div>

	<div class="form-group row">
		<label for="conteudo" class="col-md-2">Conteudo da Noticia</label>
		<div class="col-md-10">
			<form:input id="conteudo" path="conteudo" cssClass="form-control" placeholder="Conteudo da Noticia"/>
		</div>
	</div>

						</div>

	<div class="text-center"> <input type="submit" value="Cadastrar!" class="btn btn-primary btn-lg btn-rounded btn-shadow" /> </div>
				</br>
</form:form>
				</div>
			</div>
		</div>
	</section>
</div>