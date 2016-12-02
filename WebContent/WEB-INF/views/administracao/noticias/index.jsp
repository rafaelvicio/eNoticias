<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapper">
    <section class="hero" style="background-image: url(resources/img/cover/cover-game.jpg);">
        <div class="hero-bg"></div>
        <div class="container">
            <div class="page-header">
                <div class="page-title">Notícias</div>
            </div>
        </div>
    </section>

    <section class="border-bottom-1 border-grey-300 padding-top-10 padding-bottom-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#">Administração</a></li>
                        <li><a href="#">Noticias</a></li>
                        <li class="active">Todas</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="elements">
        <div class="container">
            <h3>Todas as Noticias</h3>
            <p>Lista de todas as Noticias</p>

            <div>

            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th class="hidden-xs">Titulo</th>
                                    <th class="hidden-xs">Categoria</th>
                                    <th>Autor</th>
                                    <th>A��es</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:if test="${!empty noticias}">
                                <c:forEach items="${noticias}" var="noticia">

                                <tr>
                                    <td>${noticia.id}</td>
                                    <td class="hidden-xs">${noticia.titulo}</td>
                                    <td class="hidden-xs">Otto</td>
                                    <td>${noticia.usuario.username}</td>
                                    <td>
                                        <button href="#" class="btn btn-primary btn-circle btn-sm" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil"></i></button>
                                        <a href="/administracao/noticias/excluir/${noticia.id}" class="btn btn-inverse btn-circle btn-sm" data-toggle="tooltip" title="Deletar"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>

                                </c:forEach>
                                </c:if>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>