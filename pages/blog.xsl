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
	<xsl:choose>
		<xsl:when test="$title">
			<xsl:apply-templates select="article-blog/entry" />
		</xsl:when>
		<xsl:otherwise>
			<!--<h1>YSZT!</h1>-->
		</xsl:otherwise>
	</xsl:choose>
	
	<xsl:call-template name="news" />

</xsl:template>

<xsl:template match="article-blog/entry">
	<section class="entry">
		<article>
			<header>
				<h5>
					<xsl:attribute name="class">category <xsl:value-of select="category/item/category/@handle-en" /></xsl:attribute>
					<xsl:value-of select="category/item/category" />
				</h5>
				<h1><xsl:value-of select="title" /></h1>
				<h3><xsl:copy-of select="subtitle/p/node()" /></h3>
				<h2><xsl:value-of select="date" /></h2>
				<xsl:apply-templates select="place" />
			</header>
			<!--<xsl:apply-templates select="gallery-tmp" />-->
			<xsl:apply-templates select="gallery" />
			<xsl:copy-of select="post/node()" />
		</article>
	</section>

	<!--
	<xsl:apply-templates select="partners" />
	-->

</xsl:template>

<xsl:template match="place">
	<p class="place"><xsl:value-of select="." /></p>
</xsl:template>

<xsl:template match="gallery">
	<div class="gallery">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="file" />
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
		<p class="image-caption"><xsl:copy-of select="../image-caption/node()" /></p>
	</div>
</xsl:template>

<xsl:template match="gallery/file">
	<div class="swiper-slide">
		<img src="{$workspace}{@path}/{filename}" alt=""/>
	</div>
</xsl:template>

<!--
<xsl:template match="gallery-tmp">
	<div class="gallery">
		<img src="{$workspace}{@path}/{filename}" alt=""/>
		<p class="image-caption"><xsl:copy-of select="../image-caption/node()" /></p>
	</div>
</xsl:template>
-->

<xsl:template match="partners">
	<section class="partners">
		<article>
			<h5>Partner</h5>
			<ul class="inline-list">
				<xsl:apply-templates select="item" />
			</ul>
		</article>
	</section>
</xsl:template>

<xsl:template match="partners/item">
	<li>
		<a href="link"><img src="{$workspace}{logo/@path}/{logo/filename}" alt=""/></a>
	</li>
</xsl:template>

<xsl:template match="data" mode="og-tags">
	<meta property="og:url" content="{$current-url}" />
	<meta property="og:type" content="article" />
	<meta property="og:title" content="{//article-blog/entry/title}" />
	<meta property="og:description" content="{//article-blog/entry/subtitle}" />
	<meta property="og:image" content="{$root}/image/4/600/315{//article-blog/entry/gallery-tmp/@path}/{//article-blog/entry/gallery-tmp/filename}" />
	<xsl:apply-templates select="//article-blog/entry/gallery/file" mode="og-image" />
</xsl:template>

<xsl:template match="gallery/file" mode="og-image">
	<meta property="og:image" content="{$root}/image/4/600/315{@path}/{filename}" />
</xsl:template>

<xsl:template match="data" mode="js">
	<script>

		$(document).ready(function () {
			var swiper = new Swiper('.swiper-container', {
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        keyboard: true,
        loop: false
	    });
		});

		window.onload = function () {
			var msnry = new Masonry( '.bricks-container', {
				itemSelector: '.brick',
				gutter: 30
			});
		}
	</script>
</xsl:template>

</xsl:stylesheet>
