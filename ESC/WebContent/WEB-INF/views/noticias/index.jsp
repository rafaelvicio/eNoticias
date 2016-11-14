<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>Listagem de usuários</h2>
<br />
<div class="row">
  <div class="col-sm-6 col-md-4">
  
  <c:if test="${!empty noticias}">
			<c:forEach items="${noticias}" var="noticia">
  
    <div class="thumbnail">
      <div class="caption">
        <h3>${noticia.titulo}</h3>
        <p>${noticia.conteudo}</p>
        <p><a href="/ESC/noticias/${noticia.url}" class="btn btn-primary" role="button">Ler mais...</a></p>
      </div>
    </div>
    
    	</c:forEach>
		</c:if>
    
  </div>
</div>