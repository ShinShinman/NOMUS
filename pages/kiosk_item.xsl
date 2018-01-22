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
	<xsl:include href="../utilities/_navigation-kiosk.xsl" />
	<xsl:include href="../utilities/_kiosk-brick.xsl" />

	<xsl:template match="data">
		<section class="top-offset section-header">
			<h1><xsl:value-of select="//plh-page/page/item[@lang = //current-language/@handle]" /></h1>
			<xsl:call-template name="navigation-kiosk" />
		</section>
		
		<xsl:apply-templates select="kiosk-item/entry" />
			
	</xsl:template>

	<xsl:template match="kiosk-item/entry">
		<section class="kiosk-item">
			<article>
				<div class="gallery">
					<div class="swiper-container gallery-top">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="gallery/file" />
						</div>
					</div>
					<xsl:if test="count(gallery/file) &gt; 1">
						<div class="gallery-thumbs">
							<xsl:apply-templates select="gallery/file" mode="thumb" />
						</div>
					</xsl:if>
				</div>
				<div>
					<h1><xsl:value-of select="name" /></h1>
					<h2><xsl:value-of select="price" /><a href="mailto:kiosk@nomus.gda.pl?subject=Zamówienie Kiosk NOMUS&amp;body={name}%0D%0ACena jednostkowa: {price}%0D%0AIlość:" class="kiosk-button">Zamów przez email</a></h2>
					<xsl:copy-of select="description/node()" />
				</div>
			</article>
			
		</section>
	</xsl:template>

	<xsl:template match="gallery/file">
		<div class="swiper-slide">
			<img src="{$workspace}{@path}/{filename}" alt=""/>
		</div>
	</xsl:template>

	<xsl:template match="gallery/file" mode="thumb" >
		<div class="thumbnail">
			<img src="{$workspace}{@path}/{filename}" alt=""/>
		</div>
	</xsl:template>

	<xsl:template match="data" mode="js">
		<script>
			$(document).ready(function () {
				var galleryTop = new Swiper ('.gallery-top', {
					spaceBetween: 30
				});
				var thumbnails = $('.gallery-thumbs .thumbnail');
				thumbnails.each(function(i) {
					$(this).click(function(){
						galleryTop.slideTo(i);
					});
				})
			});
		</script>
	</xsl:template>

</xsl:stylesheet>
