<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionEditar" value="/painel/editar"></c:url>

<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal" />

<div id="wrapper">
    <section class="hero cover hidden-xs" style="background-image: url(/resources/img/cover/cover-profile.jpg);">
        <div class="hero-bg"></div>
        <div class="container relative">
            <div class="page-header">
                <div class="page-title">${principal.username} <a href="/painel/" class="btn btn-primary btn-sm btn-rounded" data-toggle="tooltip" title="Editar seu Perfil">Retorna ao Perfil <i class="fa fa-user"></i></a></div>
                <div class="profile-avatar">
                    <div class="thumbnail" data-toggle="tooltip" title="YAKUZI">
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
                    <li class="active"><a href="#">Pessoal</a></li>
                    <li><a href="#">Segurança</a></li>
                    <li><a href="#">Social</span></a></li>
                    <li><a href="#">Localização </a></li>
                    <li><a href="#">Contas</a></li>
                    <li><a href="#">Jogos</a></li>
                    <li><a href="#">Equipes</a></li>
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
                                Jogador da Selva na INTZ desde 2015! Bicampeão do Campeonato Brasileiro de League of Legends
                                <ul class="panel-list margin-top-25">
                                    <li><i class="fa fa-clock-o"></i> Data de inscrição: 26/08/2016</li>
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

                                <form:form action="${actionEditar}" method="post" class="form-label" modelAttribute="usuario">

                                    <div class="form-group row">
                                        <label for="thread" class="col-md-2">Nome:</label>
                                        <div class="col-md-10">
                                            <form:input path="nome" cssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="thread" class="col-md-2">Sobrenome:</label>
                                        <div class="col-md-10">
                                            <form:input path="sobrenome" cssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="thread" class="col-md-2">Biografia:</label>
                                        <div class="col-md-10">
                                            <form:input path="biografia" cssClass="form-control" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="description" class="col-md-2">Estado</label>
                                        <div class="col-md-10">
                                            <form:input path="estado" cssClass="form-control" />
                                        </div>
                                    </div>

                                    <input type="submit" value="Confirmar edições" class="btn btn-lg btn-block btn-rounded btn-shadow btn-primary" />

                                </form:form>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>

</sec:authorize>