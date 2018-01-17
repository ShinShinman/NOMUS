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

<xsl:import href="../utilities/master.xsl" />
	<xsl:include href="../utilities/_navigation-kiosk.xsl" />
	<xsl:include href="../utilities/_kiosk-brick.xsl" />
	<xsl:include href="../utilities/_search-box.xsl" />

<xsl:template match="data">
	<section class="top-offset section-header">
		<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
		<xsl:call-template name="navigation-kiosk" />
	</section>
	<xsl:call-template name="search-box" />
	<section class="bricks-container">
		<xsl:apply-templates select="//kiosk-search/entry" />
	</section>
</xsl:template>

<xsl:template match="kiosk-search/entry">
	<xsl:call-template name="kiosk-brick" />
</xsl:template>

<xsl:template match="data" mode="js">
	<script>
		window.onload = function () {
			var msnry = new Masonry( '.bricks-container', {
				itemSelector: '.brick, .kiosk-brick',
				gutter: 30
			});
		}
	</script>
</xsl:template>

</xsl:stylesheet>