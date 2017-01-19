<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="actionAlterar" value="/administracao/categorias/alterar"></c:url>

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
                        <a href="/painel/" class="btn btn-default btn-outline btn-xs card-header__button">Painel </a>
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
                                    <a href="/administracao/noticias/">Notícias</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/jogos/">Jogos</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/categorias/">Categorias</a>
                                </li>
                                <li class="df-account-navigation--link">
                                    <a href="/administracao/desenvolvedoras/">Desenvolvedoras</a>
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
                    <div class="card__header">
                        <h4>Alterar Categoria</h4>
                    </div>
                    <div class="card__content">
                        <form:form action="${actionAlterar}" method="post" modelAttribute="categoria" cssClass="df-personal-info">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>ID</label>
                                        <form:input path="id" cssClass="form-control" readonly="true" />
                                    </div>
                                </div>
                            </div>/

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Nome</label>
                                        <form:input path="nome" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>URL da Categoria</label>
                                        <form:input path="url" cssClass="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="text-center"> <input type="submit" value="Alterar!" class="btn btn-lg btn-block btn-rounded btn-shadow btn-primary" /> </div>
                        </form:form>
                    </div>
                </div>
                <!-- Personal Information / End -->
            </div>
        </div>
    </div>
</div>

<!-- Content / End -->