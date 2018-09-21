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

<xsl:import href="../utilities/master.xsl"/>
<xsl:include href="../utilities/_highlight.xsl" />
<xsl:include href="../utilities/_news.xsl" />

<xsl:template match="data">

	<xsl:call-template name="highlight" />
	<xsl:call-template name="news" />

</xsl:template>

<xsl:template match="data" mode="js">
	<script>

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