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


	<xsl:template name="collection-brick">
		<article class="collection-brick">
			<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/eksponat/{title/@handle}/">
				<img src="{$workspace}{images/file/@path}/{images/file/filename}" />
				<h1><xsl:copy-of select="title/p/node()" /></h1>
				<xsl:apply-templates select="artist/item" />
			</a>
		</article>
	</xsl:template>

	<xsl:template match="artist/item">
		<h2><xsl:value-of select="concat(firstname, ' ', surname)" /></h2>
	</xsl:template>

</xsl:stylesheet>
