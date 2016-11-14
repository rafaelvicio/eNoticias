<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/albuns/adicionar"></c:url>
<h2>Inserção de novo álbum...</h2>
<br />
<form:form action="${actionAdicionar}" method="post"
	modelAttribute="album">
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
