<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Page Heading
================================================== -->
<div class="page-heading">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <h1 class="page-heading__title">Painel <span class="highlight">de Administração</span></h1>
                <ol class="page-heading__breadcrumb breadcrumb">
                    <li><a href="_soccer_index.html">Home</a></li>
                    <li><a href="_soccer_shop-list.html">Painel</a></li>
                    <li class="active">Administração</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Content
================================================== -->
<div class="site-content">
    <div class="container">

        <div class="row">

            <div class="col-md-4">

                <!-- Account Navigation -->
                <div class="card">
                    <header class="card__header card__header--has-filter">
                        <h4>Painel de Administração</h4>
                        <a href="painel.html" class="btn btn-default btn-outline btn-xs card-header__button">Painel </a>
                    </header>
                    <div class="card__content">
                        <nav class="df-account-navigation">
                            <ul>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/jogadores">Jogadores</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/times">Times</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/campeonatos">Campeonatos</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- Account Navigation / End -->

                <!-- Account Navigation -->
                <div class="card">
                    <div class="card__header">
                        <h4>Painel de Notícias</h4>
                    </div>
                    <div class="card__content">
                        <nav class="df-account-navigation">
                            <ul>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/noticias">Notícias</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/jogos">Jogos</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/categorias">Categorias</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/desenvolvedoras">Desenvolvedoras</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- Account Navigation / End -->
            </div>

            <div class="col-md-8">

                <!-- Personal Information -->
                <div class="card card--lg">
                    <header class="card__header card__header--has-btn">
                        <h4>Todas as Notícias</h4>
                        <a href="/administracao/noticias/cadastro" class="btn btn-default btn-outline btn-xs card-header__button">Cadastrar Notícia</a>
                    </header>
                    <div class="card__content">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Título</th>
                                    <th>Administrador</th>
                                    <th>Jogo</th>
                                    <th>Opções</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:if test="${!empty noticias}">
                                    <c:forEach items="${noticias}" var="noticia">

                                        <tr>
                                            <td>${noticia.titulo}</td>
                                            <td>${noticia.usuario.username}</td>
                                            <td>${noticia.jogo.nome}</td>
                                            <td><a href="#" class="btn btn-xs btn-default btn-outline btn-block">Alterar</a></td>
                                            <td><a href="/administracao/noticias/excluir/${noticia.id}" class="btn btn-xs btn-default btn-outline btn-block">Excluir</a></td>
                                        </tr>

                                    </c:forEach>
                                </c:if>

                                </tbody>

                            </table>
                        </div>

                    </div>
                </div>
                <!-- Personal Information / End -->
            </div>
        </div>
    </div>
</div>

<!-- Content / End -->