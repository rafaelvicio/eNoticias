<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Header
================================================== -->

<!-- Header Mobile -->
<div class="header-mobile clearfix" id="header-mobile">
	<div class="header-mobile__logo">
		<a href="_soccer_index.html"><img src="/resources/assets/images/soccer/logo.png" alt="Alchemists" class="header-mobile__logo-img"></a>
	</div>
	<div class="header-mobile__inner">
		<a id="header-mobile__toggle" class="burger-menu-icon"><span class="burger-menu-icon__line"></span></a>
		<span class="header-mobile__search-icon" id="header-mobile__search-icon"></span>
	</div>
</div>

<!-- Header Desktop -->
<header class="header">

	<!-- Header Top Bar -->
	<div class="header__top-bar clearfix">
		<div class="container">

			<!-- Account Navigation -->
			<ul class="nav-account">

				<li class="nav-account__item nav-account__item--logout"><a href="/logout">Sair</a></li>
				<li class="nav-account__item"><a href="#">Currency: <span class="highlight">USD</span></a>
					<ul class="main-nav__sub">
						<li><a href="#">USD</a></li>
						<li><a href="#">EUR</a></li>
						<li><a href="#">GBP</a></li>
					</ul>
				</li>
				<li class="nav-account__item nav-account__item--wishlist"><a href="shop-wishlist.html">Wishlist <span class="highlight">8</span></a></li>
				<li class="nav-account__item"><a href="#">Idiomas: <span class="highlight">Portugues</span></a>
					<ul class="main-nav__sub">
						<li><a href="#">English</a></li>
						<li><a href="#">Spanish</a></li>
						<li><a href="#">French</a></li>
						<li><a href="#">German</a></li>
					</ul>
				</li>
				<li class="nav-account__item"><a href="/painel/" data-toggle="modal" data-target="#modal-login-register-tabs">Sua conta</a></li>



			</ul>
			<!-- Account Navigation / End -->

		</div>
	</div>
	<!-- Header Top Bar / End -->

	<!-- Header Secondary -->
	<div class="header__secondary">
		<div class="container">
			<!-- Header Search Form -->
			<div class="header-search-form">
				<form action="#" id="mobile-search-form" class="search-form">
					<input type="text" class="form-control header-mobile__search-control" value="" placeholder="Digite sua busca aqui...">
					<button type="submit" class="header-mobile__search-submit"><i class="fa fa-search"></i></button>
				</form>
			</div>
			<!-- Header Search Form / End -->
			<ul class="info-block info-block--header">

				<li class="info-block__item info-block__item--contact-primary">
					<svg role="img" class="df-icon df-icon--whistle">
						<use xlink:href="/resources/assets/images/icons-soccer.svg#whistle"/>
					</svg>
					<h6 class="info-block__heading">Entre na eSports Club</h6>
					<a class="info-block__link" href="/painel/login">Login ou Cadastre-se</a>
				</li>
				<li class="info-block__item info-block__item--contact-secondary">
					<svg role="img" class="df-icon df-icon--soccer-ball">
						<use xlink:href="/resources/assets/images/icons-soccer.svg#soccer-ball"/>
					</svg>
					<h6 class="info-block__heading">Entre em contato</h6>
					<a class="info-block__link" href="mailto:contato@esportsclub.com.br">contato@esportsclub.com.br</a>
				</li>

				<li class="info-block__item info-block__item--shopping-cart">
					<a href="#" class="info-block__link-wrapper">
						<div class="df-icon-stack df-icon-stack--bag">
							<svg role="img" class="df-icon df-icon--bag">
								<use xlink:href="/resources/assets/images/icons-basket.svg#bag"/>
							</svg>
							<svg role="img" class="df-icon df-icon--bag-handle">
								<use xlink:href="/resources/assets/images/icons-basket.svg#bag-handle"/>
							</svg>
						</div>
						<h6 class="info-block__heading">Carrinho de Compras</h6>
						<span class="info-block__cart-sum">0 Pontos</span>
					</a>

					<!-- Dropdown Shopping Cart -->
					<ul class="header-cart">
						<li class="header-cart__item">
							<figure class="header-cart__product-thumb">
								<a href="_soccer_shop-product.html">
									<img src="/resources/assets/images/soccer/samples/_soccer_cart-sm-1.jpg" alt="">
								</a>
							</figure>
							<div class="header-cart__inner">
								<span class="header-cart__product-cat">Sneakers</span>
								<h5 class="header-cart__product-name"><a href="_soccer_shop-product.html">Sundown Sneaker</a></h5>
								<div class="header-cart__product-ratings">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star empty"></i>
								</div>
								<div class="header-cart__product-sum">
									<span class="header-cart__product-price">$28.00</span> x <span class="header-cart__product-count">2</span>
								</div>
								<div class="fa fa-times header-cart__close"></div>
							</div>
						</li>
						<li class="header-cart__item">
							<figure class="header-cart__product-thumb">
								<a href="_soccer_shop-product.html">
									<img src="/resources/assets/images/soccer/samples/_soccer_cart-sm-4.jpg" alt="">
								</a>
							</figure>
							<div class="header-cart__inner">
								<span class="header-cart__product-cat">Sneakers</span>
								<h5 class="header-cart__product-name"><a href="_soccer_shop-product.html">Atlantik Sneaker</a></h5>
								<div class="header-cart__product-ratings">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<div class="header-cart__product-sum">
									<span class="header-cart__product-price">$30.00</span> x <span class="header-cart__product-count">4</span>
								</div>
								<div class="fa fa-times header-cart__close"></div>
							</div>
						</li>
						<li class="header-cart__item">
							<figure class="header-cart__product-thumb">
								<a href="_soccer_shop-product.html">
									<img src="/resources/assets/images/soccer/samples/_soccer_cart-sm-2.jpg" alt="">
								</a>
							</figure>
							<div class="header-cart__inner">
								<span class="header-cart__product-cat">Sneakers</span>
								<h5 class="header-cart__product-name"><a href="_soccer_shop-product.html">Aquarium Sneaker</a></h5>
								<div class="header-cart__product-ratings">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star empty"></i>
									<i class="fa fa-star empty"></i>
								</div>
								<div class="header-cart__product-sum">
									<span class="header-cart__product-price">$26.00</span> x <span class="header-cart__product-count">1</span>
								</div>
								<div class="fa fa-times header-cart__close"></div>
							</div>
						</li>
						<li class="header-cart__item header-cart__item--subtotal">
							<span class="header-cart__subtotal">Cart Subtotal</span>
							<span class="header-cart__subtotal-sum">$282.00</span>
						</li>
						<li class="header-cart__item header-cart__item--action">
							<a href="shop-cart.html" class="btn btn-default btn-block">Go to Cart</a>
							<a href="shop-checkout.html" class="btn btn-primary-inverse btn-block">Checkout</a>
						</li>
					</ul>
					<!-- Dropdown Shopping Cart / End -->

				</li>

			</ul>
		</div>
	</div>
	<!-- Header Secondary / End -->

	<!-- Header Primary -->
	<div class="header__primary">
		<div class="container">
			<div class="header__primary-inner">

				<!-- Header Logo -->
				<div class="header-logo">
					<a href="_soccer_index.html"><img src="/resources/assets/images/soccer/logo.png" alt="Alchemists" class="header-logo__img"></a>
				</div>
				<!-- Header Logo / End -->

				<!-- Main Navigation -->
				<nav class="main-nav clearfix">
					<ul class="main-nav__list">
						<li class=""><a href="/">Home</a></li>
						<li class=""><a href="/noticias/">Notícias</a></li>
						<li class=""><a href="/jogos/">Jogos</a></li>
						<li class=""><a href=/campeonatos/">Campeonatos</a></li>
						<li class=""><a href=/loja/">Loja</a></li>
					</ul>

					<!-- Social Links -->
					<ul class="social-links social-links--inline social-links--main-nav">
						<li class="social-links__item">
							<a href="#" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
						</li>
						<li class="social-links__item">
							<a href="#" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
						</li>
						<li class="social-links__item">
							<a href="#" class="social-links__link" data-toggle="tooltip" data-placement="bottom" title="Twitch"><i class="fa fa-Twitch"></i></a>
						</li>
					</ul>
					<!-- Social Links / End -->

					<!-- Pushy Panel Toggle -->
					<a href="#" class="pushy-panel__toggle">
						<span class="pushy-panel__line"></span>
					</a>
					<!-- Pushy Panel Toggle / Eng -->
				</nav>
				<!-- Main Navigation / End -->
			</div>
		</div>
	</div>
	<!-- Header Primary / End -->

</header>
<!-- Header / End -->

