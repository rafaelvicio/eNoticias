<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapper">
    <section class="hero hero-games height-300" style="background-image: url(img/cover/cover-game.jpg);">
        <div class="hero-bg"></div>
        <div class="container">
            <div class="page-header">
                <div class="page-title bold"><a href="games-single.html">The Witcher 3: Wild Hunt</a></div>
                <p>New battle mechanics, a fantastic storyline, and a gritty setting make The Witcher one of the most engrossing RPGs.</p>
            </div>
        </div>
    </section>

    <section class="padding-top-25 no-padding-bottom border-bottom-1 border-grey-300">
        <div class="container">
            <div class="headline">
                <h4>Todos os Jogos</h4>
                <div class="btn-group pull-right">
                    <a href="#" class="btn btn-default"><i class="fa fa-th-large no-margin"></i></a>
                    <a href="#" class="btn btn-default"><i class="fa fa-bars no-margin"></i></a>
                </div>

                <input type="text" class="form-control hidden-xs" placeholder="Procurar jogo...">

                <div class="dropdown">
                    <a href="#" class="btn btn-default btn-icon-left btn-icon-right dropdown-toggle" data-toggle="dropdown"><i class="fa fa-sort-amount-desc"></i> Organizar por <i class="fa fa-caret-down"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Jogadores</a></li>
                        <li><a href="#">Times</a></li>
                        <li><a href="#">A-Z</a></li>
                    </ul>
                </div>

                <div class="dropdown">
                    <a href="#" class="btn btn-default btn-icon-left btn-icon-right dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gamepad"></i> Plataforma <i class="fa fa-caret-down"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">PC</a></li>
                        <li><a href="#">Xbox One</a></li>
                        <li><a href="#">Playstation 4</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </section>

    <section class="bg-grey-50">
        <div class="container">
            <div class="row">

                <c:if test="${!empty jogos}">
                <c:forEach items="${jogos}" var="jogo">

                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="card-img">
                            <a href="games-single.html"><img src="img/game/2.jpg" alt=""></a>
                            <div class="category"><span class="label label-warning">PC</span></div>
                            <div class="meta"><a href="/jogos/${jogo.url}"><i class="fa fa-heart-o"></i> <span>6</span></a></div>
                        </div>
                        <div class="caption">
                            <h3 class="card-title"><a href="/jogos/${jogo.url}">${jogo.nome}</a></h3>
                            <ul><li>Coming May 21, 2016</li></ul>
                            <p>${jogo.descricao}</p>
                        </div>
                    </div>
                </div>

                </c:forEach>
                </c:if>

            </div>

        </div>
    </section>
</div>