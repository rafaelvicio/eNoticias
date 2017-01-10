<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Page Heading
================================================== -->
<div class="page-heading">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <h1 class="page-heading__title">ESPORTS CLUB <span class="highlight">JOGOS</span></h1>
                <ol class="page-heading__breadcrumb breadcrumb">
                    <li><a href="_soccer_index.html">Home</a></li>
                    <li class="active">Jogos</li>
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
                    <option value="all">Todas</option>
                    <option value="all">MOBA</option>
                    <option value="all">FPS</option>
                    <option value="all">RTS</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Desenvolvedora</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Todas</option>
                    <option value="date">Todas</option>
                    <option value="id">Riot Games</option>
                    <option value="comments">Valve</option>
                    <option value="random">Ubisoft</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Por</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Jogadores</option>
                    <option value="all">Jogadores</option>
                    <option value="author1">Nome</option>
                </select>
            </div>
            <div class="post-filter__select">
                <label class="post-filter__label">Ordenação</label>
                <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Crescente</option>
                    <option value="all">Crescente</option>
                    <option value="author1">Descente</option>
                </select>
            </div>
            <div class="post-filter__submit">
                <button type="submit" class="btn btn-default btn-lg btn-block">Filtrar Jogos</button>
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

                <c:if test="${!empty jogos}">
                <c:forEach items="${jogos}" var="jogo">

                    <div class="post-grid__item col-xs-6">
                        <div class="posts__item posts__item--card posts__item--category-1 card">
                            <figure class="posts__thumb">
                                <div class="posts__cat">
                                    <span class="label posts__cat-label">${jogo.plataforma}</span>
                                </div>
                                <a href="#"><img src="/resources/assets/images/samples/post-img5.jpg" alt=""></a>
                            </figure>
                            <div class="posts__inner card__content">
                                <a href="#" class="posts__cta"></a>
                                <h6 class="posts__title"><a href="/jogos/${jogo.url}">${jogo.nome}</a></h6>
                                <div class="posts__excerpt">
                                    ${jogo.descricao}
                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>
                </c:if>

</div>
    <!-- Post Grid / End -->

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

                <c:if test="${!empty noticias}">
                    <c:forEach items="${noticias}" var="noticia">

                        <li class="posts__item posts__item--category-2">
                            <figure class="posts__thumb">
                                <a href="#"><img src="/resources/assets/images/samples/post-img1-xs.jpg" alt=""></a>
                            </figure>
                            <div class="posts__inner">
                                <div class="posts__cat">
                                    <span class="label posts__cat-label">${noticia.jogo.nome}</span>
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


        <!-- Widget: Tag Cloud -->
        <aside class="widget widget--sidebar card widget-tagcloud">
            <div class="widget__title card__header">
                <h4>Tag Cloud</h4>
            </div>
            <div class="widget__content card__content">
                <div class="tagcloud">
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PLAYOFFS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">ALCHEMISTS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">INJURIES</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">TEAM</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">INCORPORATIONS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">UNIFORMS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">CHAMPIONS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PROFESSIONAL</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">COACH</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">STADIUM</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">NEWS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">PLAYERS</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">WOMEN DIVISION</a>
                    <a href="#" class="btn btn-primary btn-xs btn-outline btn-sm">AWARDS</a>
                </div>
            </div>
        </aside>
        <!-- Widget: Tag Cloud / End -->


        <!-- Widget: Banner -->
        <aside class="widget card widget--sidebar widget-banner">
            <div class="widget__title card__header">
                <h4>Advertisement</h4>
            </div>
            <div class="widget__content card__content">
                <figure class="widget-banner__img">
                    <a href="#"><img src="assets/images/samples/banner.jpg" alt="Banner"></a>
                </figure>
            </div>
        </aside>
        <!-- Widget: Banner / End -->


        <!-- Widget: Trending News -->
        <aside class="widget widget--sidebar card widget-tabbed">
            <div class="widget__title card__header">
                <h4>Top Trending News</h4>
            </div>
            <div class="widget__content card__content">
                <div class="widget-tabbed__tabs">
                    <!-- Widget Tabs -->
                    <ul class="nav nav-tabs nav-justified widget-tabbed__nav" role="tablist">
                        <li role="presentation" class="active"><a href="#widget-tabbed-newest" aria-controls="widget-tabbed-newest" role="tab" data-toggle="tab">Newest</a></li>
                        <li role="presentation"><a href="#widget-tabbed-commented" aria-controls="widget-tabbed-commented" role="tab" data-toggle="tab">Most Commented</a></li>
                        <li role="presentation"><a href="#widget-tabbed-popular" aria-controls="widget-tabbed-popular" role="tab" data-toggle="tab">Popular</a></li>
                    </ul>

                    <!-- Widget Tab panes -->
                    <div class="tab-content widget-tabbed__tab-content">
                        <!-- Newest -->
                        <div role="tabpanel" class="tab-pane fade in active" id="widget-tabbed-newest">
                            <ul class="posts posts--simple-list">
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">Jake Dribbler Announced that he is retiring next mnonth</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">This Saturday starts the intensive training for the Final</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Commented -->
                        <div role="tabpanel" class="tab-pane fade" id="widget-tabbed-commented">
                            <ul class="posts posts--simple-list">
                                <li class="posts__item posts__item--category-3">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">Playoffs</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">New York Islanders are now flying to California for the big game</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">The Female Division is growing strong after their third game</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Popular -->
                        <div role="tabpanel" class="tab-pane fade" id="widget-tabbed-popular">
                            <ul class="posts posts--simple-list">
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">The Alchemists news coach is bringin a new shooting guard</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">This Saturday starts the intensive training for the Final</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                                <li class="posts__item posts__item--category-1">
                                    <div class="posts__inner">
                                        <div class="posts__cat">
                                            <span class="label posts__cat-label">The Team</span>
                                        </div>
                                        <h6 class="posts__title"><a href="#">Jake Dribbler Announced that he is retiring next mnonth</a></h6>
                                        <time datetime="2016-08-23" class="posts__date">August 23rd, 2016</time>
                                        <div class="posts__excerpt">
                                            Lorem ipsum dolor sit amet, consectetur adipisi ng elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </aside>
        <!-- Widget: Trending News / End -->

    </div>
    <!-- Sidebar / End -->
</div>

</div>
</div>

<!-- Content / End -->