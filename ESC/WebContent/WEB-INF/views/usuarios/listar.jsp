<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>Listagem de usuários</h2>
<br />
<table class="table">
	<thead>
		<th>ID</th>
		<th>Nome de usuário</th>
		<th>Role</th>
	</thead>
	<tbody>
		<c:if test="${!empty usuarios}">
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.id}</td>
					<td>${usuario.username}</td>
					<td>${usuario.role}</td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<br />
<a href="/ESC/usuarios/adicionar" class="btn btn-default">Adicionar
	novo usuário</a>