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
	<xsl:include href="../utilities/_news.xsl" />
	<xsl:include href="../utilities/_navigation-collection.xsl" />

	<xsl:template match="data">
		<section class="top-offset section-header">
			<h1>Zbiory</h1>
			<xsl:call-template name="navigation-collection" />
		</section>
		<section>
			<article>
				<p>
					<xsl:apply-templates select="//tags/item[not(. = following::item)]">
						<xsl:sort select="@handle" />
					</xsl:apply-templates>
				</p>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="tags/item">
		<span class="tag"><xsl:text> #</xsl:text><xsl:value-of select="." /></span>
	</xsl:template>

</xsl:stylesheet>
