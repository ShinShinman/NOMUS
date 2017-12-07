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

		<xsl:choose>
		<xsl:when test="$tag">
			<xsl:apply-templates select="collection" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="our-tags" />
		</xsl:otherwise>
	</xsl:choose>
	</xsl:template>

	<xsl:template name="our-tags">
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
		<span class="tag"><a href="{$root}{$current-path}/{@handle}"><xsl:text> #</xsl:text><xsl:value-of select="." /></a></span>
	</xsl:template>

	<xsl:template match="collection">
		<section>
			<article>
				<h1 class="tag-header">#<xsl:value-of select="//collection-tags/entry[tags/item/@handle = $tag][1]/tags/item" /></h1>
			</article>
		</section>
		<section class="bricks-container">
			<xsl:apply-templates select="entry" />
		</section>
	</xsl:template>

	<xsl:template match="collection/entry">
		<article class="collection-brick">
			<a href="{$root}/{//current-language/@handle}/{//plh-page/page/item[@lang = //current-language/@handle]/@handle}/eksponat/{title/@handle}/">
				<img src="{$workspace}{images/file/@path}/{images/file/filename}" />
				<h1><xsl:copy-of select="title/p/node()" /></h1>
				<h2><xsl:value-of select="concat(artist/item/firstname, ' ', artist/item/surname)" /></h2>
			</a>
		</article>
	</xsl:template>

	<xsl:template match="data" mode="js">
		<script>
			window.onload = function () {
				var msnry = new Masonry( '.bricks-container', {
					itemSelector: '.brick, .collection-brick',
					gutter: 30
				});
			}
		</script>
	</xsl:template>

</xsl:stylesheet>
