<?xml version="1.0" encoding="utf-8"?>

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

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="highlight">
		<section class="highlight">
			<xsl:apply-templates select="highlight/entry" />
		</section>
	</xsl:template>

	<xsl:template match="highlight/entry">
	<article>
		<!-- {$root}/{//current-language/@handle}/edukacja/{article/item/title/@handle}/ -->
		<a href="javascript:void(0);">
			<div>
				<h4 class="subtitle"><xsl:value-of select="article/item/subtitle/p" /></h4>
				<h4 class="date"><xsl:value-of select="article/item/date" /></h4>
			</div>
			<h1><xsl:copy-of select="slogan/p/node()" /></h1>
			<h1>→</h1>
		</a>
	</article>
</xsl:template>

</xsl:stylesheet>
