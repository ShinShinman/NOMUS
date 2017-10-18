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

	<section class="highlight">
		<article>
			<div>
				<h3 class="subtitle">Wykład Hanny Wróblewskiej</h3>
				<h3 class="date">25.10.2017, g. 12.00</h3>
			</div>
			<h1>Co to jest kolekcja Zachęty?</h1>

			<h1>→</h1>

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