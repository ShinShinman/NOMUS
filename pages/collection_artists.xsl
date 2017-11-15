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

	<xsl:template match="data">
		<section class="top-offset">
			<h1>Zbiory</h1>
			<ul class="inline-list">
				<li>raz</li>
				<li>dwa</li>
				<li>trzy</li>
				<li>4444</li>
			</ul>
		</section>
		<section>
			<xsl:apply-templates select="collection-artists/entry" />
		</section>
	</xsl:template>

	<xsl:template match="collection-artists/entry">
		<article class="artist">
			<h1><xsl:value-of select="surname" />, <xsl:value-of select="firstname" />&nbsp;<span class="dates">(<xsl:value-of select="substring(birdth-date, 1, 4)" />–<xsl:value-of select="substring(death-date, 1, 4)" />)</span></h1>
		</article>
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="{//article-collection/entry/title}" />
		<meta property="og:description" content="{//article-collection/entry/subtitle}" />
		<meta property="og:image" content="{$root}/image/4/600/315{//article-collection/entry/gallery-tmp/@path}/{//article-collection/entry/gallery-tmp/filename}" />
	</xsl:template>

</xsl:stylesheet>
