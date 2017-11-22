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
	
	<xsl:template name="navigation-collection">
		<nav>
			<ul class="inline-list">
				<li><a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/"><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></a></li>
				<xsl:apply-templates select="//navigation-collection/page/item[@lang = //current-language/@handle]" />
				<li><a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/wyszukiwarka/" class="icon">s</a></li>
			</ul>
		</nav>
	</xsl:template>

	<xsl:template match="page/item">
		<xsl:variable name="lang" select="//current-language/@handle" />
		<li><a href="{$root}/{$lang}/{//plh-page/page/item[@lang = $lang]/@handle}/{@handle}/"><xsl:value-of select="." /></a></li>
	</xsl:template>

</xsl:stylesheet>
