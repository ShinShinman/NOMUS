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

	<xsl:template name="kiosk-brick">
		<article class="kiosk-brick">
			<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/artykul/{name/@handle}/">
				<img src="{$workspace}{brick-image/@path}/{brick-image/filename}" />
				<p class="price"><xsl:value-of select="price" /><span class="kiosk-button">+</span></p>
				<h1><xsl:copy-of select="name/node()" /></h1>
			</a>
		</article>
	</xsl:template>

</xsl:stylesheet>
