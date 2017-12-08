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
		
		<xsl:apply-templates select="collection-item/entry" />
			
	</xsl:template>

	<xsl:template match="collection-item/entry">
		<section class="collection-item">
			<header>
				<div>
					<img src="{$workspace}{images/file/@path}/{images/file/filename}" alt=""/>
				</div>
				<div>
					<h1><xsl:copy-of select="title/p/node()" /></h1>
					<h2><a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/artysci/{artist/item/surname/@handle}/"><xsl:value-of select="concat(artist/item/firstname, ' ', artist/item/surname)" /></a></h2>
					<p><xsl:value-of select="creation-date" /></p>
					<p><xsl:value-of select="creation-place" /></p>
					<p><xsl:value-of select="technic" /></p>
					<xsl:apply-templates select="tags" />
				</div>
			</header>
			<article>
				<xsl:copy-of select="description" />
			</article>
		</section>
	</xsl:template>

	<xsl:template match="tags">
		<p class="tags"><xsl:apply-templates select="item" /></p>
	</xsl:template>

	<xsl:template match="tags/item">
		<span class="tag"><a href="{$root}/{//current-language/@handle}/zbiory/nasze-tagi/{@handle}"><xsl:text> #</xsl:text><xsl:value-of select="." /></a></span>
	</xsl:template>

</xsl:stylesheet>
