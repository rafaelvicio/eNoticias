<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h2>Listagem de m�sicas</h2>
<br />
<table class="table">
	<thead>
		<th>ID</th>
		<th>Nome da m�sica</th>
		<th>Data de cria��o</th>
		<th>Nome do �lbum</th>
		<th>A��es</th>
	</thead>
	<tbody>
		<c:if test="${!empty musicas}">
			<c:forEach items="${musicas}" var="musica">
				<tr>
					<td>${musica.id}</td>
					<td>${musica.nome}</td>
					<td><fmt:formatDate value="${musica.dataCriacao}"
							pattern="dd/MM/yyyy" timeZone="UTC" /></td>
					<td>${musica.album.nome}</td>
					<td><a href="/ESC/musicas/alterar/${musica.id}">Alterar</a>
						| <a href="/ESC/musicas/excluir/${musica.id}">Excluir</a>
						|</td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<br />
<a href="/ESC/musicas/adicionar" class="btn btn-default">Adicionar
	nova m�sica</a>