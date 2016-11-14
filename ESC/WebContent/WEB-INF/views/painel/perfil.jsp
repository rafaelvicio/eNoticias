<sec:authorize access="isAuthenticated()">
<sec:authentication property="principal" var="principal" />

<h2>Bem vindo ao seu Perfil, ${principal.username }</h2>

<p> Mude sua senha <a href="#">Clique aqui</a>  </p>

</sec:authorize>

