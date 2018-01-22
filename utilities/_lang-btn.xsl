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

	<xsl:template name="lang-btn">
		<xsl:param name="lang" />
		<xsl:choose>
			<xsl:when test="$lang = 'en'">
				<div class="lang-btn"><a href="{$root}/{//supported-languages/item[@handle != $lang]/@handle}/">PL</a></div>
				<!--
				<div class="lang-btn"><a href="{$root}/{//supported-languages/item[@handle != $lang]/@handle}/{//plh-page/page/item[@lang != $lang]/@handle}/{//*[@handle-pl = //params/page]/@handle-en}">PL</a></div>
				-->
			</xsl:when>
			<xsl:otherwise>
				<div class="lang-btn"><a href="{$root}/{//supported-languages/item[@handle != $lang]/@handle}/">EN</a></div>
				<!--
				<div class="lang-btn"><a href="{$root}/{//supported-languages/item[@handle != $lang]/@handle}/{//plh-page/page/item[@lang != $lang]/@handle}/{//*[@handle-en = //params/page]/@handle-pl}">EN</a></div>
				-->
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
