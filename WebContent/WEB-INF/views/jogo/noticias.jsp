<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Page Heading
================================================== -->
<div class="page-heading">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <h1 class="page-heading__title">Jogo: <span class="highlight">${jogo.nome}</span></h1>
                <ol class="page-heading__breadcrumb breadcrumb">
                    <li><a href="_soccer_index.html">Home</a></li>
                    <li><a href="#">Jogos</a></li>
                    <li class="active">${jogo.nome}</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Player Pages Filter -->
<nav class="content-filter">
    <div class="container">
        <a href="#" class="content-filter__toggle"></a>
        <ul class="content-filter__list">
            <li class="content-filter__item "><a href="/jogos/${jogo.url}" class="content-filter__link"><small>Jogo</small> Informações</a></li>
            <li class="content-filter__item content-filter__item--active"><a href="/jogos/${jogo.url}/noticias" class="content-filter__link"><small>Jogo</small> Notícias</a></li>
            <li class="content-filter__item "><a href="jogo-campeonatos.html" class="content-filter__link"><small>Jogo</small> Campeonatos</a></li>
            <li class="content-filter__item "><a href="jogo-ranking.html" class="content-filter__link"><small>Jogo</small> Ranking</a></li>
            <li class="content-filter__item "><a href="jogo-galeria.html" class="content-filter__link"><small>Jogo</small> Galeria</a></li>
        </ul>
    </div>
</nav>
<!-- Player Pages Filter / End -->

<!-- Content
================================================== -->
<div class="site-content">
    <div class="container">

        <!-- Posts Grid -->
        <div class="posts posts--cards post-grid post-grid--fitRows row">

            <c:if test="${!empty noticias}">
                <c:forEach items="${noticias}" var="noticia">

            <div class="post-grid__item col-xs-6 col-sm-4">
                <div class="posts__item posts__item--card posts__item--category-1 card">
                    <figure class="posts__thumb">
                        <div class="posts__cat">
                            <span class="label posts__cat-label">${noticia.jogo.nome}</span>
                        </div>
                        <a href="/noticias/${noticia.url}"><img src="${noticia.banner}" alt=""></a>
                    </figure>
                    <div class="posts__inner card__content">
                        <a href="/noticias/${noticia.url}" class="posts__cta"></a>
                        <fmt:formatDate value="${noticia.data}" pattern="d/MMM/yyyy HH:mm"/>
                        <h6 class="posts__title"><a href="/noticias/${noticia.url}">${noticia.titulo}</a></h6>
                        <div class="posts__excerpt">
                                ${noticia.descricao}
                        </div>
                    </div>
                </div>
            </div>

                </c:forEach>
            </c:if>


        </div>
        <!-- Post Grid / End -->

    </div>
</div>

<!-- Content / End -->