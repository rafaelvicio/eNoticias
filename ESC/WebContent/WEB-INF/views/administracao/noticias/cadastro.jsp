<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/noticias/cadastro"></c:url>
<h2>Adicionar nova Noticia</h2>
<br />
<form:form action="${actionAdicionar}" method="post"
	modelAttribute="noticia">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Titulo da Noticia:</label>
				<form:input path="titulo" cssClass="form-control" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>URL da noticia:</label>
				<p>Não utilize espaços</p>
				<form:input path="url" cssClass="form-control" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Link banner noticia:</label>
				<form:input path="banner" cssClass="form-control" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Descrição curta:</label>
				<p>Até 100 caracteres</p>
				<form:input path="descricao" cssClass="form-control" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Conteudo:</label>
				<form:input path="conteudo" cssClass="form-control" />
			</div>
		</div>
	</div>
	<input type="submit" value="Salvar!" class="btn btn-default" />
</form:form>
