<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<div id="wrapper">
	<section class="bg-grey-50 border-bottom-1 border-grey-300 padding-10">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li><a href="#">Notícias</a></li>
				<li class="active">${noticia.titulo}</li>
			</ol>
		</div>
	</section>

	<section class="padding-top-50 padding-bottom-50 padding-top-sm-30">
		<div class="container">
			<div class="row sidebar">
				<div class="col-md-9 leftside">
					<div class="post post-single">
						<div class="post-header post-author">
							<a href="#" class="author" data-toggle="tooltip" title="YAKUZI"><img src="/resources/img/user/avatar.jpg" alt="" /></a>
							<div class="post-title">
								<h2><a href="#">${noticia.titulo}</a></h2>
								<ul class="post-meta">
									<li><a href="#"><i class="fa fa-user"></i> ${noticia.usuario.username}</a></li>
									<li><i class="fa fa-calendar-o"></i> ${noticia.data}</li>
									<li><a href="#disqus_thread9"><i class="fa fa-comments"></i> 0 <span class="hidden-xs">Comments</span></a></li>
								</ul>
							</div>
						</div>

						<div class="post-thumbnail">
							<a href="#"><img src="${noticia.banner}" alt=""></a>
							<div class="post-caption">Descrição do banner</div>
						</div>

						<p>${noticia.conteudo}</p>

						<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12 margin-bottom-sm-30">
							<div class="testimonial">
								<p><em>" ${noticia.comentario}"</em></p>
								<div class="thumbnail">
									<img src="resources/img/user/avatar.jpg" alt="" />
								</div>
								<div class="testimonial-name">
									<a href="#">${noticia.usuario.username}</a>
									<span>Sobre o autor</span>
								</div>
							</div>
						</div>

						<div class="row margin-top-40">
							<div class="col-md-8">
								<div class="tags">
									<a href="#">Playstation 4</a>
									<a href="#">Xbox One</a>
									<a href="#">Mirrors Edge</a>
									<a href="#">Cod Black Ops 3</a>
									<a href="#">Battlefront 3</a>
								</div>
							</div>
							<div class="col-md-4 hidden-xs hidden-sm">
								<ul class="share">
									<li><a href="#" class="btn btn-sm btn-social-icon btn-facebook" data-toggle="tooltip" title="Share on facebook"><i class="fa fa-facebook"></i></a><span>312</span></li>
									<li><a href="#" class="btn btn-sm btn-social-icon btn-twitter" data-toggle="tooltip" title="Share on twitter"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" class="btn btn-sm btn-social-icon btn-google-plus" data-toggle="tooltip" title="Share on google"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="comments">
						<h4 class="page-header"><i class="fa fa-comment-o"></i> Comentarios</h4>
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

				<div class="col-md-3 rightside">
					<div class="widget margin-bottom-35">
						<div class="btn-inline">
							<input type="text" class="form-control padding-right-40"  placeholder="Search...">
							<button type="submit" class="btn btn-link color-grey-700 padding-top-10"><i class="fa fa-search"></i></button>
						</div>
					</div>

					<div class="widget widget-list">
						<div class="title">Recent Posts</div>
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
						<a href="#"><img src="img/place.jpg" alt=""></a>
					</div>

					<div class="widget widget-list">
						<div class="title">Recent Comments</div>
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