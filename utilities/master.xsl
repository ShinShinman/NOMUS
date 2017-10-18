
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

	<xsl:include href="_footer.xsl" />

	<xsl:template match="/">

		<html class="no-js" lang="pl">
			<head>
				<meta charset="utf-8" />
				<meta http-equiv="x-ua-compatible" content="ie=edge" />
				<meta name="description" content="" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<xsl:apply-templates mode="meta-tags"/>

				<link rel="manifest" href="manifest.json" />
				

				<!-- Place favicon.ico in the root directory -->

				<link rel="stylesheet" type="text/css" href="{$workspace}/css/main.min.css" />
			</head>
			<body class="{$current-page} hyphenate">
				<!--[if lte IE 9]>
					<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
				<![endif]-->

				<section class="page-header">
					<header class="logo">
						<a href="{$root}"><img src="{$workspace}/images/n.svg" class="logo-n" /></a>
						<img src="{$workspace}/images/nomus.svg" class="logo-nomus" />
					</header>
					<nav>
					<div class="menu-anchor" />

					<div class="slogan">
						<img src="{$workspace}/images/nms.svg" alt="" />
						<ul class="menu inline-list">
							<li>
								<a href="#">działalność</a>
							</li>
							<li>
								<a href="#">muzeum</a>
							</li>
							<li><a href="#">przewodniki</a></li>
							<li class="yszt"><a href="#">newsleter</a></li>
						</ul>
					</div>

					<!--
						<ul class="slogan inline-list">
							<li>
								<a href="#">działalność</a>
							</li>
							<li>
								<a href="#">muzeum</a>
							</li>
							<li><a href="#">przewodniki</a></li>
							<li class="yszt"><a href="#">newsleter</a></li>
						</ul>

					-->
					</nav>
				</section>

				<xsl:apply-templates />

				<xsl:call-template name="footer">
					<xsl:with-param name="lang" select="//current-language/@handle" />
				</xsl:call-template>

				<script src="{$workspace}/js/main.min.js" ></script>
				<script>
					$(function(){

						//sticky menu
						$(window).scroll(function(){
							move();
						});

						var anchor = $('.menu-anchor');
						var slogan = $('.slogan');

						var move = function() {
							var st = $(window).scrollTop();
							var or = anchor.offset().top - 30;
							var state = slogan.css('position');

							if(st <xsl:text disable-output-escaping="yes">&gt;</xsl:text> or <xsl:text disable-output-escaping="yes">&amp;&amp;</xsl:text> state == 'relative') {
								var posX = slogan.position().left;
								slogan.css({
									position: 'fixed',
									top: '30px',
									left: posX
								});
							} else if (st <xsl:text disable-output-escaping="yes">&lt;</xsl:text>= or <xsl:text disable-output-escaping="yes">&amp;&amp;</xsl:text> state == 'fixed'){
								slogan.css({
									position: 'relative',
									top: '',
									left: ''
								})
							}

						}
						
					})
				</script>

			<xsl:apply-templates mode="js"/>

			</body>
		</html>

	</xsl:template>

	<xsl:template match="data" mode="meta-tags">
		<title><xsl:value-of select="$website-name"/></title>
	</xsl:template>

	<xsl:template name="favicon">
		<link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png" />
		<link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png" />
		<link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png" />
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
		<link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png" />
		<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
		<link rel="manifest" href="/manifest.json" />
		<meta name="msapplication-TileColor" content="#ffffff" />
		<meta name="msapplication-TileImage" content="/ms-icon-144x144.png" />
		<meta name="theme-color" content="#ffffff" />
	</xsl:template>

<xsl:template match="data" mode="js" />

</xsl:stylesheet>
