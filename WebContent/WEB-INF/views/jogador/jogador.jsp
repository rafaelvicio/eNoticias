<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <div id="wrapper">
        <section class="hero cover hidden-xs" style="background-image: url(/resources/img/cover/cover-profile.jpg);">
            <div class="hero-bg"></div>
            <div class="container relative">
                <div class="page-header">
                    <div class="page-title">${usuario.username} <a href="/painel/editar/" class="btn btn-primary btn-sm btn-rounded" data-toggle="tooltip" title="Editar seu Perfil">Editar seu Perfil <i class="fa fa-cog"></i></a></div>
                    <div class="profile-avatar">
                        <div class="thumbnail" data-toggle="tooltip" title="${usuario.username}">
                            <a href="#">
                                <img src="/resources/img/user/profile.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="profile-nav height-50 border-bottom-1 border-grey-300  hidden-xs">
            <div class="tab-select sticky">
                <div class="container">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="/painel/">Perfil</a></li>
                        <li><a href="#">Times <span>(34)</span></a></li>
                        <li><a href="#">Amigos <span>(34)</span></a></li>
                        <li><a href="#">Galeria <span>(8)</span></a></li>
                        <li><a href="#">Videos <span>(2)</span></a></li>
                        <li><a href="#">Times</a></li>
                    </ul>
                </div>
            </div>
        </section>

        <section class="bg-grey-50 padding-top-60 padding-top-sm-30">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 hidden-xs">
                        <div class="widget">
                            <div class="panel panel-default">
                                <div class="panel-heading">Sobre</div>
                                <div class="panel-body">

                                    <c:if test="${not empty usuario.biografia}">
                                        <h3>${usuario.biografia}</h3>
                                    </c:if>

                                    <ul class="panel-list margin-top-25">
                                        <li><i class="fa fa-clock-o"></i> Data de inscrição: ${usuario.data}</li>
                                        <li><i class="fa fa-map-marker"></i> Brasilia</li>
                                        <li><i class="fa fa-chain-broken"></i> www.esportsclub.com.br</li>
                                        <br>
                                        <li>
                                            <a class="btn btn-circle btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
                                            <a class="btn btn-circle btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
                                            <a class="btn btn-circle btn-social-icon btn-facebook"><i class="fa fa-twitch"></i></a>
                                            <a class="btn btn-circle btn-social-icon btn-pinterest"><i class="fa fa-youtube"></i></a>
                                            <a class="btn btn-circle btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="widget widget-friends">
                            <div class="panel panel-default">
                                <div class="panel-heading">Times (3)</div>
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="#" data-toggle="tooltip" title="Orb"><img src="/resources/img/user/avatar2.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Patrick"><img src="/resources/img/user/avatar3.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="John"><img src="/resources/img/user/avatar4.jpg" alt=""></a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="widget widget-friends">
                            <div class="panel panel-default">
                                <div class="panel-heading">Jogos (7)</div>
                                <div class="panel-body">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="tooltip" title="Patrick"><img src="/resources/img/user/avatar3.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="John"><img src="/resources/img/user/avatar4.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Patrick"><img src="/resources/img/user/avatar3.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="John"><img src="/resources/img/user/avatar4.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Orb"><img src="/resources/img/user/avatar2.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Michael"><img src="/resources/img/user/avatar5.jpg" alt=""></a></li>
                                        <li><a href="#" data-toggle="tooltip" title="Orb"><img src="/resources/img/user/avatar2.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-9 col-sm-8">

                        <div class="panel panel-default margin-bottom-40">

                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab1">
                                    </br>
                                    <div>
                                        <h2 class="font-size-22 font-weight-300">

                                            <c:if test="${not empty usuario.biografia}">
                                                <h3>${usuario.nome}</h3>
                                            </c:if>

                                            <span class="font-weight-500">"${usuario.username}"</span>

                                            <c:if test="${not empty usuario.biografia}">
                                                <h3>${usuario.sobrenome}</h3>
                                            </c:if>

                                        </h2>
                                    </div>
                                    </br>
                                    <div>
                                        <p>Em atividade desde 2012, Revolta passou por Keyd Team, CNB e Keyd Stars até chegar à INTZ. Depois de ser vice-brasileiro em 2014 com a CNB e cair em descrédito diante da torcida após diversas falhas na Keyd, ele renasceu ao entrar na INTZ, assumindo a posição de caçador, capitão e coordenador de jogadas de uma equipe que foi de "segundo calibre" a campeã brasileira em apenas cinco meses. Rápido como e fatal em suas emboscadas, principalmente com o seu famoso Lee Sin, Revolta é um caçador imprevisível e de liderança cada vez mais apurada.</p>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
