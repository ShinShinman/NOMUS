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
			<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
			<xsl:call-template name="navigation-collection" />
		</section>
		<xsl:choose>
			<xsl:when test="$artist != ''">
				<xsl:apply-templates select="collection-by-artist" />
			</xsl:when>
			<xsl:otherwise>
				<section>
					<div class="alphabet">
						<xsl:call-template name="alphabet" />
					</div>
					<xsl:call-template name="index" />
				</section>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="alphabet">
		<xsl:param name="text" select="'AĄBCĆDEĘFGHIJKLŁMNŃOÓPRSŚTUWYZŹŻ'" />
		<xsl:if test="$text != ''">
			<xsl:variable name="letter" select="substring($text, 1, 1)" />
			<xsl:variable name="occurs" select="count(//collection-artists/entry[substring(surname, 1, 1) = $letter])" />
			<a href="#{$letter}">
				<xsl:if test="$occurs = 0">
					<xsl:attribute name="class">disabled</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="$letter" /><xsl:text> </xsl:text>
			</a>
			<xsl:text> </xsl:text>
			<xsl:call-template name="alphabet">
				<xsl:with-param name="text" select="substring-after($text, $letter)" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="index">
		<xsl:param name="text" select="'AĄBCĆDEĘFGHIJKLŁMNŃOÓPRSŚTUWYZŹŻ'" />
		<xsl:if test="$text != ''">
			<xsl:variable name="letter" select="substring($text, 1, 1)" />
			
			<xsl:call-template name="artistsss">
				<xsl:with-param name="head" select="$letter" />
			</xsl:call-template>

			<xsl:call-template name="index">
				<xsl:with-param name="text" select="substring-after($text, $letter)" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="artistsss">
		<xsl:param name="head" />
		<xsl:variable name="occurs" select="count(//collection-artists/entry[substring(surname, 1, 1) = $head])" />
		<xsl:if test="$occurs &gt; 0">
			<div id="{$head}" class="index">
				<!-- <h4><xsl:value-of select="$head" /></h4> -->
				<xsl:apply-templates select="//collection-artists/entry[substring(surname, 1, 1) = $head]" />
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="collection-artists/entry">
		<article class="artist">
			<h1><a href="{$root}{$current-path}/{surname/@handle}/"><xsl:value-of select="surname" />, <xsl:value-of select="firstname" /></a>&nbsp;<xsl:apply-templates select="date-of-birth" /></h1>
		</article>
	</xsl:template>

	<xsl:template match="date-of-birth">
		<span class="dates">(<xsl:value-of select="." />–<xsl:value-of select="../date-of-death" />)</span>
	</xsl:template>

	<xsl:template match="data" mode="og-tags">
		<meta property="og:url" content="{$current-url}" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="{//article-collection/entry/title}" />
		<meta property="og:description" content="{//article-collection/entry/subtitle}" />
		<meta property="og:image" content="{$root}/image/4/600/315{//article-collection/entry/gallery-tmp/@path}/{//article-collection/entry/gallery-tmp/filename}" />
	</xsl:template>

	<xsl:template match="collection-by-artist">
		<section>
			<article>
				<header>
					<h1><xsl:value-of select="concat(entry[1]/artist/item/firstname, ' ', entry[1]/artist/item/surname)" />&nbsp;<span class="dates">(<xsl:value-of select="entry[1]/artist/item/date-of-birth" />–<xsl:value-of select="entry[1]/artist/item/date-of-death" />)</span></h1>
				</header>
				<xsl:copy-of select="entry[1]/artist/item/bio/node()" />
			</article>
		</section>
		<section class="bricks-container">
			<xsl:apply-templates select="entry" />
		</section>
		<script>
			window.onload = function () {
				var msnry = new Masonry( '.bricks-container', {
					itemSelector: '.brick, .collection-brick',
					gutter: 30
				});
			}
		</script>
	</xsl:template>

	<xsl:template match="collection-by-artist/entry">
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
			$(function() {
				var alphaLinks = $('.alphabet a:not(.disabled)');
				alphaLinks.each(function(i, trg) {
					$(this).click(function(e) {
						e.preventDefault();
						console.log($(this).attr('href'));
						$('html, body').animate({
							scrollTop: $('div'+$(this).attr('href')).offset().top
						}, 'slow');
					})
				})
			})
		</script>
	</xsl:template>

</xsl:stylesheet>
