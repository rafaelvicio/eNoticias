<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<div id="wrapper">
    <section class="hero height-350 hero-game" style="background-image: url(img/cover/cover-game.jpg);">
        <div class="hero-bg"></div>
        <div class="container">
            <div class="page-header">
                <div class="page-title">${jogo.nome}</div>
                <a href="http://www.youtube.com/watch?v=c0i88t0Kacs" class="btn btn-success text-initial" data-toggle="lightbox" data-width="1280">Assista o trailer do ${jogo.nome}</a>
            </div>
        </div>
    </section>

    <section class="bg-white no-padding hidden-xs border-bottom-1 border-grey-300" style="height: 54px">
        <div class="tab-select text-center sticky">
            <div class="container">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#">${jogo.nome}</a></li>
                    <li><a href="#"><i class="fa fa-star"></i> Review</a></li>
                    <li><a href="#"><i class="fa fa-pencil"></i> News</a></li>
                    <li><a href="#"><i class="fa fa-image"></i> Images</a></li>
                    <li><a href="#"><i class="fa fa-video-camera"></i> Videos</a></li>
                    <li><a href="#"><i class="fa fa-quote-left"></i> Forum</a></li>
                </ul>
            </div>
        </div>
    </section>

    <section class="bg-grey-50 padding-top-30">
        <div class="container">
            <div class="row">
                <div class="col-md-8 padding-right-20">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="headline">
                                <h4>Ultimas notícias</h4>
                                <div class="btn-group pull-right">
                                    <a href="#" class="btn btn-default"><i class="fa fa-th-large no-margin"></i></a>
                                    <a href="#" class="btn btn-default"><i class="fa fa-bars no-margin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <c:if test="${!empty noticias}">
                    <c:forEach items="${noticias}" var="noticia">

                    <div class="panel panel-default panel-post">
                        <div class="panel-body">
                            <div class="post">
                                <div class="post-header post-author">
                                    <a href="/noticias/${noticia.url} class="author" data-toggle="tooltip" title="YAKUZI"><img src="${noticia.banner}" alt=""></a>
                                    <div class="post-title">
                                        <h3><a href="#">${noticia.titulo}</a></h3>
                                        <ul class="post-meta">
                                            <li><a href="#"><i class="fa fa-user"></i> ${noticia.usuario.username}</a></li>
                                            <li><i class="fa fa-calendar-o"></i> ${noticia.data}</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="embed-responsive embed-responsive-16by9 post-thumbnail">
                                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/vSteQ_wlB94?rel=0&amp;showinfo=0" allowfullscreen></iframe>
                                </div>

                                Etiam et sollicitudin elit. Sed ultrices aliquet dui, eu aliquet metus sodales sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis porttitor varius pulvinar. Vivamus efficitur vulputate imperdiet.
                            </div>
                        </div>
                        <div class="panel-footer">
                            <ul class="post-action">
                                <li><a href="#"><i class="fa fa-heart"></i> like (5)</a></li>
                                <li><a href="#"><i class="fa fa-comments"></i> Comments</a></li>
                                <li><a href="#"><i class="fa fa-reply"></i> share</a></li>
                            </ul>
                        </div>
                    </div>

                    </c:forEach>
                    </c:if>




                    <div class="text-center"><a href="#" class="btn btn-primary btn-lg btn-shadow btn-rounded btn-icon-right">Ler mais</a></div>
                </div>

                <div class="col-md-4 padding-left-20">
                    <div class="widget widget-game" style="background-image: url(img/game/game-widget.jpg);">
                        <div class="overlay">
                            <div class="title">${jogo.nome}</div>

                            <div class="bold text-uppercase">Plataformas</div>
                            <span class="label label-primary">PS4</span>
                            <span class="label label-warning">PC</span>
                            <span class="label label-success">Xbox</span>

                            <div class="bold text-uppercase margin-top-40">Desenvolvedora</div>
                            <span class="font-size-13">CD Projekt Red Studio</span>

                            <div class="bold text-uppercase margin-top-35">Data de Lançamento</div>
                            <span class="font-size-13">June 18, 2015</span>

                            <div class="description">
                                ${jogo.descricao}
                                <a href="${jogo.site}" class="btn btn-block btn-primary margin-top-40">Jogue<i class="ion-ios-game-controller-b margin-left-10"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="widget widget-list">
                        <div class="tab-select border-bottom-1 border-grey-300">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tabs1" data-toggle="tab">Posts</a></li>
                                <li><a href="#tabs2" data-toggle="tab">Forums</a></li>
                                <li><a href="#" data-toggle="tab">Images</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <ul class="tab-pane fade in active" id="tabs1">
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/1.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Overwatch Closed Beta</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 15, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/2.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Blood and Gore</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 13, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/3.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Warner Bros. Interactive</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 12, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/4.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Sharks Don't Sleep</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 10, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/5.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">GTA 5 Reaches 5 Million</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 10, 2015</p>
                                    </div>
                                </li>
                            </ul>
                            <ul class="tab-pane fade" id="tabs2">
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/1.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Overwatch Closed Beta</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 15, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/2.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Blood and Gore</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 13, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/3.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Warner Bros. Interactive</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 12, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/4.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">Sharks Don't Sleep</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 10, 2015</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="thumb"><img src="img/blog/xs/5.jpg" alt=""></a>
                                    <div class="widget-list-meta">
                                        <h4 class="widget-list-title"><a href="#">GTA 5 Reaches 5 Million</a></h4>
                                        <p><i class="fa fa-clock-o"></i> September 10, 2015</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="widget widget-card">
                        <div class="title">Related Videos</div>
                        <div class="card">
                            <div class="card-img">
                                <a href="videos-single.html"><img src="http://i1.ytimg.com/vi/tuPEam_Jt4I/mqdefault.jpg" alt=""></a>
                                <div class="time">04:51</div>
                            </div>
                            <div class="caption">
                                <h3 class="card-title"><a href="videos-single.html">The Witcher 3: Wild Hunt - Official Gameplay</a></h3>
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> April 13, 2016</li>
                                    <li><i class="fa fa-eye"></i> 1500 views</li>
                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-img">
                                <a href="videos-single.html"><img src="http://i1.ytimg.com/vi/_UFT49qWopg/mqdefault.jpg" alt=""></a>
                                <div class="time">02:04</div>
                            </div>
                            <div class="caption">
                                <h3 class="card-title"><a href="videos-single.html">The Witcher 3: Wild Hunt - The Beginning</a></h3>
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> April 13, 2016</li>
                                    <li><i class="fa fa-eye"></i> 1500 views</li>
                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-img">
                                <a href="videos-single.html"><img src="http://i1.ytimg.com/vi/xx8kQ4s5hCY/mqdefault.jpg" alt=""></a>
                                <div class="time">06:33</div>
                            </div>
                            <div class="caption">
                                <h3 class="card-title"><a href="videos-single.html">The Witcher 3: Wild Hunt</a></h3>
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> April 13, 2016</li>
                                    <li><i class="fa fa-eye"></i> 1500 views</li>
                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-img">
                                <a href="videos-single.html"><img src="http://i1.ytimg.com/vi/c0i88t0Kacs/mqdefault.jpg" alt=""></a>
                                <div class="time">11:06</div>
                            </div>
                            <div class="caption">
                                <h3 class="card-title"><a href="videos-single.html">The Witcher 3: Wild Hunt - Killing Monsters Cinematic Trailer</a></h3>
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> April 13, 2016</li>
                                    <li><i class="fa fa-eye"></i> 1500 views</li>
                                </ul>
                            </div>
                        </div>
                        <a href="#" class="btn btn-inverse btn-block">More Videos</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>