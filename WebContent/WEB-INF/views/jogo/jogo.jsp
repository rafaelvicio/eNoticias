<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

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
            <li class="content-filter__item content-filter__item--active"><a href="jogo-informacoes.html" class="content-filter__link"><small>Jogo</small> Informações</a></li>
            <li class="content-filter__item "><a href="jogo-noticias.html" class="content-filter__link"><small>Jogo</small> Notícias</a></li>
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

        <div class="row">

            <!-- Content -->
            <div class="content col-md-8">

                <!-- Article -->
                <article class="card card--lg post post--single">

                    <figure class="post__thumbnail">
                        <img src="assets/images/samples/single-player-img1.jpg" alt="">
                    </figure>

                    <div class="card__content">
                        <header class="post__header">
                            <h2 class="post__title">${jogo.nome}</h2>
                        </header>

                        <div class="post__content">
                            <p>${jogo.descricao}</p>

                            <div class="spacer"></div>

                            <h4>Where it all Started</h4>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore.</p>

                            <div class="spacer"></div>

                            <blockquote class="blockquote blockquote--default">
                                <p class="blockquote__content">I think that Soccer is not just a sport, but a way to live your life</p>
                                <footer class="blockquote__footer">
                                    <cite class="blockquote__cite">
                                        <span class="blockquote__author-name">James Girobilie</span>
                                        <span class="blockquote__author-info">Alchemists SG</span>
                                    </cite>
                                </footer>
                            </blockquote>

                            <h4>Always Playing for the Win</h4>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                        </div>

                    </div>
                </article>
                <!-- Article / End -->

            </div>
            <!-- Content / End -->

            <!-- Player Sidebar -->
            <div class="sidebar sidebar--player col-md-4">

                <!-- Widget: Social Buttons -->
                <aside class="widget widget--sidebar widget-social">
                    <a href="#" class="btn-social-counter btn-social-counter--fb">
                        <div class="btn-social-counter__icon">
                            <i class="fa fa-facebook"></i>
                        </div>
                        <h6 class="btn-social-counter__title">Curta no Facebook</h6>
                        <span class="btn-social-counter__count">83600 Curtidas</span>
                        <span class="btn-social-counter__add-icon"></span>
                    </a>
                    <a href="#" class="btn-social-counter btn-social-counter--twitter">
                        <div class="btn-social-counter__icon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <h6 class="btn-social-counter__title">Siga no Twitter</h6>
                        <span class="btn-social-counter__count">580 Seguidores</span>
                        <span class="btn-social-counter__add-icon"></span>
                    </a>
                    <a href="#" class="btn-social-counter btn-social-counter--rss">
                        <div class="btn-social-counter__icon">
                            <i class="fa fa-rss"></i>
                        </div>
                        <h6 class="btn-social-counter__title">Inscreva-se no RSS</h6>
                        <span class="btn-social-counter__count">840 Inscrições</span>
                        <span class="btn-social-counter__add-icon"></span>
                    </a>
                </aside>
                <!-- Widget: Social Buttons / End -->

                <!-- Widget: Popular News -->
                <aside class="widget widget--sidebar card widget-popular-posts">
                    <div class="widget__title card__header">
                        <h4>Notícias Relacionadas</h4>
                    </div>
                    <div class="widget__content card__content">
                        <ul class="posts posts--simple-list">

                            <c:if test="${!empty noticias}">
                                <c:forEach items="${noticias}" var="noticia">

                                    <li class="posts__item posts__item--category-2">
                                        <figure class="posts__thumb">
                                            <a href="#"><img src="/resources/assets/images/samples/post-img1-xs.jpg" alt=""></a>
                                        </figure>
                                        <div class="posts__inner">
                                            <div class="posts__cat">
                                                <span class="label posts__cat-label">Injuries</span>
                                            </div>
                                            <h6 class="posts__title"><a href="/noticias/${noticia.url}">${noticia.titulo}</a></h6>
                                            <time datetime="2016-08-23" class="posts__date">${noticia.data}</time>
                                        </div>
                                    </li>

                                </c:forEach>
                            </c:if>

                        </ul>
                    </div>
                </aside>
                <!-- Widget: Popular News / End -->


                <!-- Widget: Newsletter -->
                <aside class="widget widget--sidebar card widget-newsletter">
                    <div class="widget__title card__header">
                        <h4>Newsletter</h4>
                    </div>
                    <div class="widget__content card__content">
                        <div class="widget-newsletter__desc">
                            <p>Fique por dentro de todas as novidades da eSports Club se inscrevendo em nosso Newsletter.</p>
                        </div>
                        <form action="#" id="newsletter" class="inline-form">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Seu endereço de email...">
                                <span class="input-group-btn">
                          <button class="btn btn-lg btn-default" type="button">Inscrever</button>
                        </span>
                            </div>
                        </form>
                    </div>
                </aside>
                <!-- Widget: Newsletter / End -->


            </div>
            <!-- Player Sidebar / End -->
        </div>

    </div>
</div>

<!-- Content / End -->