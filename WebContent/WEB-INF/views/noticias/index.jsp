<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- wrapper -->
<div id="wrapper">
    <section class="bg-grey-50 border-bottom-1 border-grey-300 padding-top-10 padding-bottom-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="/noticias/">Noticias</a></li>
                        <li class="active">${noticia.titulo}</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row sidebar">
                <div class="col-md-8 leftside">

            <c:if test="${!empty noticias}">
                <c:forEach items="${noticias}" var="noticia">

                    <div class="post post-md">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="post-thumbnail">
                                    <a href="#"><img src="${noticia.banner}" alt=""></a>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="post-header">
                                    <div class="post-title">
                                        <h4><a href="/noticias/${noticia.url}">${noticia.titulo}</a></h4>
                                        <ul class="post-meta">
                                            <li><a href="#"><i class="fa fa-user"></i> ${noticia.usuario.username}</a></li>
                                            <li><i class="fa fa-calendar-o"></i> ${noticia.data}</li>
                                        </ul>
                                    </div>
                                </div>
                                <p>${noticia.descricao}</p>
                            </div>
                        </div>
                    </div>

                </c:forEach>
            </c:if>


                    <ul class="pagination">
                        <li><a href="#"><span>&laquo;</span></a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">10</a></li>
                        <li><a href="#">11</a></li>
                        <li><a href="#"><span>&raquo;</span></a></li>
                    </ul>
                </div>

                <div class="col-md-4 rightside">
                    <div class="widget margin-bottom-35">
                        <div class="btn-inline">
                            <input type="text" class="form-control padding-right-40"  placeholder="Search...">
                            <button type="submit" class="btn btn-link color-grey-700 padding-top-10"><i class="fa fa-search"></i></button>
                        </div>
                    </div>

                    <div class="widget widget-list">
                        <div class="title">Últimas noticias</div>
                        <ul>
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

                    <div class="widget">
                        <div class="title">Recent Tweets</div>
                        <div id="twitter" data-twitter="346548853320851456"></div>
                    </div>

                    <div class="widget">
                        <div class="title">Facebook</div>
                        <div class="widget-row">
                            <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) return;
                                js = d.createElement(s); js.id = id;
                                js.src = "http://connect.facebook.net/en-GB/sdk.js#xfbml=1&version=v2.5";
                                fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                            <div class="fb-page" data-href="https://www.facebook.com/yakuzi.eu" data-height="800" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/yakuzi.eu"><a href="https://www.facebook.com/yakuzi.eu">yakuzi.eu</a></blockquote></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /#wrapper -->

