<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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
							<li><a href="/administracao/tags/cadastro"><i class="fa fa-edit"></i> Cadastrar Tag</a></li>
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

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-pencil"></i>
		<form:input id="titulo" path="titulo" cssClass="form-control" placeholder="Titulo da Noticia"/>
	</div>

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-link"></i>
		<form:input id="url" path="url" cssClass="form-control" placeholder="URL da Noticia"/>
	</div>

	</br>

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-picture"></i>
		<form:input id="banner" path="banner" cssClass="form-control" placeholder="Link Banner"/>
	</div>

	</br>

	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Jogo:</label>
				<form:select path="jogo.id" cssClass="form-control">
					<form:options items="${jogos}" itemLabel="nome" itemValue="id" />
				</form:select>
			</div>
		</div>
	</div>

	</br>

	<c:forEach items="${tags}" var="tag">
		<input type="checkbox" class="checkbox checkbox-inline" value="${tag.id}">${tag.nome}<br>
	</c:forEach>

	</br>

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-envelope"></i>
		<form:input id="descricao" path="descricao" cssClass="form-control" placeholder="Descrição da Noticia"/>
	</div>

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-envelope"></i>
		<form:input id="conteudo" path="conteudo" cssClass="form-control" placeholder="Conteudo da Noticia"/>
	</div>

	<div class="form-group input-icon-left">
		<i class="glyphicon glyphicon-comment"></i>
		<form:input id="comentario" path="comentario" cssClass="form-control" placeholder="Comentario da Noticia"/>
	</div>

				</div>

	<div class="text-center"> <input type="submit" value="Cadastrar!" class="btn btn-lg btn-block btn-rounded btn-shadow btn-primary" /> </div>
				</br>
</form:form>
				</div>
			</div>
		</div>
	</section>
</div>