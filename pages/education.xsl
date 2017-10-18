<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#x00A0;">
	<!ENTITY copy   "&#169;">
	<!ENTITY ndash "&#8211;">
	<!ENTITY thinsp "&#8201;">
	<!ENTITY amp "&#038;">
	<!ENTITY hellip "&#8230;">
	<!ENTITY bull "&#8226;">
	<!ENTITY lsaqua "&#8249;">
	<!ENTITY rsaqua "&#8250;">
	<!ENTITY larr "&#8592;">
	<!ENTITY rarr "&#8594;">
	<!ENTITY lsaquo "&#8249;">
	<!ENTITY rsaquo "&#8250;">
	<!ENTITY percent "&#37;">
	<!ENTITY gt "&#37;">
]>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/master.xsl"/>

<xsl:template match="data">
	<section class="entry">
		<article>
			<header>
				<h5 class="category">edukacja</h5>
				<h1>Oddział Zielona Brama</h1>
				<h3>Budowanie kolekcji muzealnych sztuki współczesnej na przykładzie kolekcji Muzeum Sztuki Nowoczesnej w Warszawie. Wykład Joanny Mytkowskiej.</h3>
				<h2>10.10.2017, g. 12.00</h2>
			</header>
			<div class="gallery">
				<img src="{$workspace}/images/tmp/mytkowska-post.png" alt=""/>
				<p class="image-caption">Joanna Mytkowska, fot. Tadeusz Rolke</p>
			</div>
			<p>Powstawanie kolekcji sztuki współczesnej jest zawsze specyficznym procesem, związanym z jednej strony z bieżącymi rozpoznaniami historii sztuki, z drugiej z interpretacjami krytyków, instytucji sztuki i odbiorców. Jest to więc proces bardzo dynamiczny, podlegający stosunkowo szybkim przemianom w rytm zmian życia społecznego. Biorąc pod uwagę powyższe uwarunkowania, jak budować efektywne strategie kolekcjonowania i na jakim zespole przesłanek opierać mocne podstawy kolekcji dla instytucji publicznej? Na to pytanie postara się odpowiedzieć Joanna Mytkowska w rozmowie z Anetą Szyłak.</p>

			<p>Joanna Mytkowska jest kuratorką, krytyczką sztuki. Od 2007 dyrektorka Muzeum Sztuki Nowoczesnej w Warszawie. Poprzednio pracowała jako kuratorka w Centre Pompidou w Paryżu, jest współzałożycielką Fundacji Galerii Foksal. Kuratorka wystaw: „Les promesses du passe” (Centre Pompidou, Paryż 2010), „Niezgrabne przedmioty” (MSN, Warszawa 2009), „Alina Szapocznikow. Sculpture Undone 1955–1972” (Centrum Sztuki Współczesnej WIELS w Brukseli, Hammer Museum w Los Angeles, MoMA, Nowy Jork, 2012–2013). Redaktorka publikacji: Henryk Stażewski. Ekonomia myślenia i postrzegania (2006), Edward Krasiński (1997). Kuratorka wystaw w Polsce i za granicą, m.in. „Les Inquiets. Cinq artistes sous la pression de la guerre” (Paryż 2008), „Le Nuage Magellan” (Paryż 2007), „Oskar Hansen”, „Sen Warszawy” (Warszawa 2005), „Loophole” (Cieszyn 2005), „Prym” (Zielona Góra 2004), „Akcja równoległa” (Cieszyn 2004), „Nova Popularna” (Warszawa 2003), „Spacer na koniec świata z Robertem Walserem” (Warszawa 2002).</p>

		</article>
	</section>

	<section class="partners">
		<article>
			<h5>Partnerzy</h5>
			<ul class="inline-list">
				<li>
					<img src="{$workspace}/images/tmp/mng-logo-do-postu.png" alt=""/>
				</li>
				<li>
					<img src="{$workspace}/images/o_GMW-po-BW.jpg" alt=""/>
				</li>
				<li>
					<img src="{$workspace}/images/tmp/nomus-logo-do-postu.png" alt=""/>
				</li>
			</ul>
		</article>
	</section>

	<section class="bricks-container-header">
		<h1>Aktualności</h1>
	</section>

	<section class="bricks-container">

		<article class="brick">
			<img src="{$workspace}/images/tmp/mytkowska.png" alt="" />
			<h1>Oddział Zielona Brama</h1>
			<h3>Budowanie kolekcji muzealnych sztuki współczesnej na przykładzie kolekcji Muzeum Sztuki Nowoczesnej
w Warszawie.</h3>
			<p class="date">9.11.2017</p>
		</article>

		<article class="brick">
			<img src="{$workspace}/images/tmp/wroblewska.png" alt="" />
			<h1>Co to jest kolekcja Zachęty?</h1>
			<h3>Wykład Hanny Wróblewskiej</h3>
			<p class="date">25.10.2017, g. 12.00</p>
		</article>

		<article class="brick">
			<img src="{$workspace}/images/tmp/suchan.png" alt="" />
			<h1>Kolekcja sztuki: zbiór rzeczy czy doświadczeń?</h1>
			<h3>Wykład Jarosława Suchana</h3>
			<p class="date">10.10.2017, g. 12.00</p>
		</article>

		<article class="brick">
			<img src="{$workspace}/images/tmp/szylak.png" alt="" />
			<h1>Ucząc się od Aten, Kassel i Münster.</h1>
			<h3>Wykład Anety Szyłak</h3>
			<p class="date">10.10.2017, g. 12.00</p>
		</article>
	</section>

</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		console.log('Home');

		window.onload = function () {
			var msnry = new Masonry( '.bricks-container', {
				itemSelector: '.brick',
				gutter: 30
			});
		}

		/*
		$('.owl-carousel').owlCarousel({
			loop: true,
			items: 1,
			dots: true,
			smartSpeed: 1000,
			autoplay: false,
			autoplayTimeout: 7000,
			smartSpeed: 800
		});
		*/
	</script>
</xsl:template>

</xsl:stylesheet>