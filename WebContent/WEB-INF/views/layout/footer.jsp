<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
		   uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Footer
================================================== -->
<footer id="footer" class="footer">

	<!-- Footer Widgets -->
	<div class="footer-widgets">
		<div class="footer-widgets__inner">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="footer-col-inner">

							<!-- Footer Logo -->
							<div class="footer-logo footer-logo--has-txt">
								<a href="index.html">
									<img src="/resources/assets/images/soccer/logo-footer.png" alt="Alchemists" class="footer-logo__img">
									<div class="footer-logo__heading">
										<h5 class="footer-logo__txt">The Alchemists</h5>
										<span class="footer-logo__tagline">Elric Bros School</span>
									</div>
								</a>
							</div>
							<!-- Footer Logo / End -->

							<!-- Widget: Contact Info -->
							<div class="widget widget--footer widget-contact-info">
								<div class="widget__content">
									<div class="widget-contact-info__desc">
										<p>A eSports Club é a plataforma lider de eSports. Disponibiliza torneios & ladder em muitos jogos e com diferentes niveis de competição. 6.756.960 membros já jogaram 12.348.169 partidas em 85.759 torneios. </p>
										<p>Fundada em Abril de 2016 a eSports Club deveseja se torna o maior clube de eSports!</p>
									</div>
									<div class="widget-contact-info__body info-block">
										<div class="info-block__item">
											<svg role="img" class="df-icon df-icon--soccer-ball">
												<use xlink:href="/resources/assets/images/icons-soccer.svg#soccer-ball"/>
											</svg>
											<h6 class="info-block__heading">Entre na eSports Club</h6>
											<a class="info-block__link" href="/painel/login">Login ou Cadastre-se</a>
										</div>
										<div class="info-block__item">
											<svg role="img" class="df-icon df-icon--whistle">
												<use xlink:href="/resources/assets/images/icons-soccer.svg#whistle"/>
											</svg>
											<h6 class="info-block__heading">Entre em contato</h6>
											<a class="info-block__link" href="mailto:contato@esportsclub.com.br">contato@esportsclub.com.br</a>
										</div>
										<div class="info-block__item info-block__item--nopadding">
											<ul class="social-links">
												<li class="social-links__item">
													<a href="#" class="social-links__link"><i class="fa fa-facebook"></i> Facebook</a>
												</li>
												<li class="social-links__item">
													<a href="#" class="social-links__link"><i class="fa fa-twitter"></i> Twitter</a>
												</li>
												<li class="social-links__item">
													<a href="#" class="social-links__link"><i class="fa fa-twitch"></i> Twitch</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- Widget: Contact Info / End -->
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="footer-col-inner">
							<!-- Widget: Popular Posts / End -->
							<div class="widget widget--footer widget-popular-posts">
								<h4 class="widget__title">Jogos</h4>
								<div class="widget__content">
									<ul class="list">
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">League of Legends</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Counter-Strike: GO</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Rainbow Six Siege</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Overwatch</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Crossfire</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Battlefield</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Paladins</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">HearthStone</a></h5>
										</li>
										<li class="social-links__item">
											<h5><a href="#" class="social-links__link">Heroes of The Storm</a></h5>
										</li>
									</ul>
								</div>
							</div>
							<!-- Widget: Popular Posts / End -->
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="footer-col-inner">

							<!-- Widget: Contact / End -->
							<div class="widget widget--footer widget-contact">
								<h4 class="widget__title">Contato</h4>
								<div class="widget__content">
									<p>Entre em contato com a equipe da eSports Club</p>
									<form action="#" class="contact-form">
										<div class="form-group form-group--xs">
											<input type="email" class="form-control input-sm" id="contact-form-email" placeholder="Seu e-mail...">
										</div>
										<div class="form-group form-group--xs">
											<textarea class="form-control input-sm" name="contact-form-message" rows="4" placeholder="Sua mensagem..."></textarea>
										</div>
										<button type="submit" class="btn btn-primary-inverse btn-sm btn-block">Envie sua mensagem</button>
									</form>
								</div>
							</div>
							<!-- Widget: Contact / End -->

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Sponsors -->
		<div class="container">
			<div class="sponsors">
				<!--<h6 class="sponsors-title">Parceiros:</h6> -->
				<ul class="sponsors-logos">
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/lol.png" alt=""></a>
					</li>
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/csgo.png" alt=""></a>
					</li>
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/r6.png" alt=""></a>
					</li>
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/dota2.png" alt=""></a>
					</li>
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/hearthstone.png" alt=""></a>
					</li>
					<li class="sponsors__item">
						<a href="#"><img src="/resources/assets/images/patrocionadores/hots.png" alt=""></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- Sponsors / End -->

	</div>
	<!-- Footer Widgets / End -->

	<!-- Footer Secondary -->
	<div class="footer-secondary">
		<div class="container">
			<div class="footer-secondary__inner">
				<div class="row">
					<div class="col-md-4">
						<div class="footer-copyright"><a href="/">eSports Club</a> 2017 &nbsp; | &nbsp; Todos os direitos reservados</div>
					</div>
					<div class="col-md-8">
						<ul class="footer-nav footer-nav--right footer-nav--condensed footer-nav--sm">
							<li class="footer-nav__item"><a href="/">Home</a></li>
							<li class="footer-nav__item"><a href="/noticias/">Notícias</a></li>
							<li class="footer-nav__item"><a href="/jogos/">Jogos</a></li>
							<li class="footer-nav__item"><a href="/campeonatos/">Campeonatos</a></li>
							<li class="footer-nav__item"><a href="/loja/">Loja</a></li>
							<li class="footer-nav__item"><a href="/contato">Contato</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer Secondary / End -->
</footer>
<!-- Footer / End -->