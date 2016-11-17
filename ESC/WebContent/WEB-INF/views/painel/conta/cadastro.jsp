<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAdicionar" value="/painel/conta/cadastro"></c:url>
<h2>Cadastro de nova Conta</h2>
<br />
<form:form action="${actionAdicionar}" method="post"
           modelAttribute="time">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label>Nome do Time:</label>
                <form:input path="nome" cssClass="form-control" />
                <form:errors path="nome" cssStyle="color: red;"></form:errors>
            </div>
        </div>
    </div>
    <input type="submit" value="Cadastrar!" class="btn btn-default" />
</form:form>
