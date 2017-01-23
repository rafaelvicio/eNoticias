<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Page Heading
================================================== -->
<div class="page-heading">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h1 class="page-heading__title">eSport Club <span class="highlight">${noticia.titulo}</span></h1>
				<ol class="page-heading__breadcrumb breadcrumb">
					<li><a href="_soccer_index.html">Home</a></li>
					<li><a href="_soccer_blog-1.html">Notícias</a></li>
					<li class="active">${noticia.titulo}</li>
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
			<!-- Content -->
			<div class="content col-md-8">

				<!-- Article -->
				<article class="card card--lg post post--single">

					<figure class="post__thumbnail">
						<img src="${noticia.banner}" alt="">
					</figure>

					<div class="card__content">
						<div class="post__category">
							<span class="label posts__cat-label">${noticia.jogo.nome}</span>
						</div>
						<header class="post__header">
							<h2 class="post__title">${noticia.titulo}</h2>
							<ul class="post__meta meta">
								<li class="meta__item meta__item--date">
									<div class="posts__date">
										<fmt:formatDate value="${noticia.data}" pattern="d/MMM/yyyy HH:mm"/>
									</div>
								</li>
							</ul>
						</header>

						<div class="post__content">
							${noticia.conteudo}
						</div>

					</div>
				</article>
				<!-- Article / End -->

				<!-- Post Sharing Buttons -->
				<div class="post-sharing">
					<div class="row">
						<div class="col-md-4">
							<a href="#" class="btn btn-default btn-facebook btn-icon btn-block"><i class="fa fa-facebook"></i> Compartilhar no Facebook</a>
						</div>
						<div class="col-md-4">
							<a href="#" class="btn btn-default btn-twitter btn-icon btn-block"><i class="fa fa-twitter"></i> Compartilhar no Twitter</a>
						</div>
						<div class="col-md-4">
							<a href="#" class="btn btn-default btn-gplus btn-icon btn-block"><i class="fa fa-google-plus"></i> Compartilhar no Google+</a>
						</div>
					</div>
				</div>
				<!-- Post Sharing Buttons / End -->


				<!-- Post Author -->
				<div class="post-author card card--lg">
					<div class="card__content">
						<header class="post-author__header">
							<figure class="post-author__avatar">
								<img src="/resources/assets/images/samples/avatar-1.jpg" alt="Post Author Avatar">
							</figure>
							<div class="post-author__info">
								<h4 class="post-author__name">${noticia.usuario.username}</h4>
								<span class="post-author__slogan">${noticia.usuario.biografia}</span>
							</div>
							<ul class="post-author__social-links social-links social-links--btn">
								<li class="social-links__item">
									<a href="#" class="social-links__link social-links__link--fb"><i class="fa fa-facebook"></i></a>
								</li>
								<li class="social-links__item">
									<a href="#" class="social-links__link social-links__link--twitter"><i class="fa fa-twitter"></i></a>
								</li>
							</ul>
						</header>
						<div class="post-author__description">
							${noticia.comentario}
						</div>
					</div>
				</div>
				<!-- Post Author / End -->

				<!-- Post Comments -->
				<div class="post-comments card card--lg">
					<header class="post-commments__header card__header">
						<h4>Comentários</h4>
					</header>
					<div class="post-comments__content card__content">
						<div id="disqus_thread"></div>
						<script>
							/**
							 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
							 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
							/*
							 var disqus_config = function () {
							 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
							 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
							 };
							 */
							(function() { // DON'T EDIT BELOW THIS LINE
								var d = document, s = d.createElement('script');
								s.src = '//esports-club.disqus.com/embed.js';
								s.setAttribute('data-timestamp', +new Date());
								(d.head || d.body).appendChild(s);
							})();
						</script>
						<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
						<script id="dsq-count-scr" src="//esports-club.disqus.com/count.js" async></script>


					</div>
				</div>
				<!-- Post Comments / End -->

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
						<h4>Ultímas Notícias</h4>
					</div>
					<div class="widget__content card__content">
						<ul class="posts posts--simple-list">

							<c:if test="${!empty noticias}">
								<c:forEach items="${noticias}" var="noticia">

									<li class="posts__item posts__item--category-2">
										<figure class="posts__thumb">
											<a href="/noticias/${noticia.url}"><img src="/resources/assets/images/samples/post-img1-xs.jpg" alt=""></a>
										</figure>
										<div class="posts__inner">
											<div class="posts__cat">
												<span class="label posts__cat-label">${noticia.jogo}</span>
											</div>
											<h6 class="posts__title"><a href="#">${noticia.titulo}</a></h6>
											<div class="posts__date">
												<fmt:formatDate value="${noticia.data}" pattern="d/MMM/yyyy HH:mm"/>
											</div>
										</div>
									</li>

								</c:forEach>
							</c:if>

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