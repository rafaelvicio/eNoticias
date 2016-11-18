<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<br />
<div class="post-thumbnail">
<a href="#"><img src="${noticia.banner}" alt=""></a>
<div class="post-caption">Example of post thumbnail caption</div>
</div>
<p>Titulo</p>
<p>${noticia.titulo}</p>
<p>${noticia.conteudo}</p>
<p>Titulo</p>
<p>${noticia.data}</p>