<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAlterar" value="/albuns/alterar"></c:url>
<h2>Alteração do álbum "${album.nome }"</h2>
<br />
<form:form action="${actionAlterar}" method="post"
	modelAttribute="album">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Id:</label>
				<form:input path="id" cssClass="form-control" readonly="true" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Nome:</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Ano de lançamento:</label>
				<form:input path="anoDeLancamento" cssClass="form-control" />
				<form:errors path="anoDeLancamento" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<input type="submit" value="Salvar!" class="btn btn-default" />
</form:form>
