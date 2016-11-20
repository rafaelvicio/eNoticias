<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />

<h2>Bem-vindo, ${principal.username }</h2>

</sec:authorize>