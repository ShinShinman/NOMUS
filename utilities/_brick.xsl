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


	<xsl:template name="brick">
		<xsl:variable name="section">
			<xsl:choose>
				<xsl:when test="../section/@handle = 'news-education' and //current-language/@handle = 'pl'">
					<xsl:text>edukacja</xsl:text>
				</xsl:when>

				<xsl:when test="../section/@handle = 'news-exhibitions' and //current-language/@handle = 'pl'">
					<xsl:text>wystawy</xsl:text>
				</xsl:when>

				<xsl:when test="../section/@handle = 'news-collection' and //current-language/@handle = 'pl'">
					<xsl:text>kolekcja</xsl:text>
				</xsl:when>

				<xsl:when test="../section/@handle = 'news-blog'">
					<xsl:text>blog</xsl:text>
				</xsl:when>				
			</xsl:choose>
		</xsl:variable>

		<article class="brick ../section/@handle">
			<a href="{$root}/{//current-language/@handle}/{$section}/{title/@handle}/">
				<xsl:if test="brick-image">
					<img src="{$workspace}{brick-image/@path}/{brick-image/filename}" alt="" />
				</xsl:if>
				<h1><xsl:value-of select="title" /></h1>
				<h3><xsl:value-of select="subtitle/p" /></h3>
				<p class="date"><xsl:value-of select="date" /></p>
			</a>
		</article>
	</xsl:template>

</xsl:stylesheet>
