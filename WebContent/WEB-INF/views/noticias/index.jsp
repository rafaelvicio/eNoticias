<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Page Heading
================================================== -->
<div class="page-heading">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <h1 class="page-heading__title">eSports Club <span class="highlight">Notícias</span></h1>
                <ol class="page-heading__breadcrumb breadcrumb">
                    <li><a href="_soccer_index.html">Home</a></li>
                    <li class="active">Notícias</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Post Filter -->
<div class="post-filter">
    <div class="container">
        <form action="#" class="post-filter__form clearfix">
            <div class="post-filter__select">
                <label class="post-filter__label">Categoria</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Todas</option>
                    <option value="all">Geral</option>
                    <option value="team">Comunicados</option>
                    <option value="playoffs">Campeonatos</option>
                    <option value="injuries">Eventos</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Por Jogo</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Todos</option>
                    <option value="date">Todos</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Ordenação</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Crescente</option>
                    <option value="ascending">Crescente</option>
                    <option value="descending">Descendente</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Redatores</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Todos</option>
                    <option value="author1">Todos</option>
                    <option value="author1">Rafael 'Vicio' Augusto</option>
                </select>
            </div>
            <div class="post-filter__submit">
                <button type="submit" class="btn btn-default btn-lg btn-block">Filtrar Notícias</button>
            </div>
        </form>
    </div>
</div>
<!-- Post Filter / End -->


<!-- Content
================================================== -->
<div class="site-content">
    <div class="container">

        <div class="row">
            <!-- Content -->
            <div class="content col-md-8">

                <!-- Posts Grid -->
                <div class="posts posts--cards post-grid post-grid--2cols post-grid--fitRows row">

            <c:if test="${!empty noticias}">
             <c:forEach items="${noticias}" var="noticia">

                 <div class="post-grid__item col-xs-6">
                     <div class="posts__item posts__item--card posts__item--category-1 card">
                         <figure class="posts__thumb">
                             <div class="posts__cat">
                                 <span class="label posts__cat-label">${noticia.jogo.nome}</span>
                             </div>
                             <a href="#"><img src="${noticia.banner}" alt=""></a>
                         </figure>
                         <div class="posts__inner card__content">
                             <a href="#" class="posts__cta"></a>
                             <div class="posts__date">
                                 <fmt:formatDate value="${noticia.data}" pattern="d/MMM/yyyy HH:mm"/>
                             </div>
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
                <!-- Posts List / End -->

                <!-- Post Pagination -->
                <nav class="post-pagination text-center">
                    <ul class="pagination pagination--condensed pagination--lg">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><span>...</span></li>
                        <li><a href="#">16</a></li>
                    </ul>
                </nav>
                <!-- Post Pagination / End -->


            </div>
            <!-- Content / End -->

            <!-- Sidebar -->
            <div id="sidebar" class="sidebar col-md-4">

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
                        <h4>Notícias Populares</h4>
                    </div>
                    <div class="widget__content card__content">
                        <ul class="posts posts--simple-list">
                            <li class="posts__item posts__item--category-2">
                                <figure class="posts__thumb">
                                    <a href="#"><img src="assets/images/samples/post-img1-xs.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat">
                                        <span class="label posts__cat-label">Injuries</span>
                                    </div>
                                    <h6 class="posts__title"><a href="#">Mark Johnson has a Tibia Fracture and is gonna be out</a></h6>
                                    <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                </div>
                            </li>
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb">
                                    <a href="#"><img src="assets/images/samples/post-img2-xs.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat">
                                        <span class="label posts__cat-label">The Team</span>
                                    </div>
                                    <h6 class="posts__title"><a href="#">Jay Rorks is only 24 points away from breaking the record</a></h6>
                                    <time datetime="2016-08-22" class="posts__date">August 22nd, 2016</time>
                                </div>
                            </li>
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb">
                                    <a href="#"><img src="assets/images/samples/post-img3-xs.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat">
                                        <span class="label posts__cat-label">The Team</span>
                                    </div>
                                    <h6 class="posts__title"><a href="#">The new eco friendly stadium won a Leafy Award in 2016</a></h6>
                                    <time datetime="2016-08-21" class="posts__date">August 21st, 2016</time>
                                </div>
                            </li>
                            <li class="posts__item posts__item--category-1">
                                <figure class="posts__thumb">
                                    <a href="#"><img src="assets/images/samples/post-img4-xs.jpg" alt=""></a>
                                </figure>
                                <div class="posts__inner">
                                    <div class="posts__cat">
                                        <span class="label posts__cat-label">The Team</span>
                                    </div>
                                    <h6 class="posts__title"><a href="#">The team is starting a new power breakfast regimen</a></h6>
                                    <time datetime="2016-08-21" class="posts__date">August 21st, 2016</time>
                                </div>
                            </li>
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
            <!-- Sidebar / End -->
        </div>

    </div>
</div>

<!-- Content / End -->