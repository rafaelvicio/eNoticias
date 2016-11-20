<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/administracao/jogo/cadastro"></c:url>
<h2>Adicionar novo Jogo</h2>
<br />
<form:form action="${actionAdicionar}" method="post"
	modelAttribute="jogo">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Nome do Jogo:</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="form-group">
				<label>Plataforma:</label>
				<form:select path="plataforma" cssClass="form-control">
     				<form:options items="${plataforma}" />
				</form:select>	
			</div>
		</div>
	</div>
	<input type="submit" value="Salvar!" class="btn btn-default" />
</form:form>
