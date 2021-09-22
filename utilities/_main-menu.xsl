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

	<xsl:import href="_lang-btn.xsl" />

	<xsl:template name="main-menu">
		<div class="main-menu">
			<section class="page-header">
				<header class="logo">
					<a href="{$root}/{//supported-languages/item[@handle != //current-language/@handle]/@handle}/"><img src="{$workspace}/images/n-mob.svg" class="logo-n" /></a>
					<img src="{$workspace}/images/nomus.svg" class="logo-nomus" />
				</header>
				<nav>
					<!--<div class="menu-anchor" />-->
					<div class="slogan">
						<div class="menu-trigger"><a href="javascript:void(0)">M</a></div>
						<xsl:call-template name="lang-btn">
							<xsl:with-param name="lang" select="//current-language/@handle" />
						</xsl:call-template>
					</div>
				</nav>
			</section>
			<!--
			<section class="newsletter">
				<form action="https://gda.us17.list-manage.com/subscribe/post?u=c6a57201c76eaa020f0a3c76a&amp;id=60e894667d" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="novalidate">
					<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Prenumeruj newsletter NOMUS" />
					<div id="mce-responses" class="clear">
						<div class="response" id="mce-error-response" style="display:none"></div>
						<div class="response" id="mce-success-response" style="display:none"></div>
					</div>
					<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c6a57201c76eaa020f0a3c76a_60e894667d" tabindex="-1" value="" /></div>
					<input type="submit" value="→" name="subscribe" id="mc-embedded-subscribe" />
				</form>
			</section>
			-->
			<section class="menu">
				<article>
					<xsl:call-template name="newsletter" />
					<xsl:call-template name="pages" />
					<ul class="media">
						<li><h3><a href="https://www.facebook.com/nomus.gd/" target="_blank">Facebook</a></h3></li>
						<!-- <li><h3><a href="https://twitter.com/nomus_gdansk/" target="_blank">Twitter</a></h3></li> -->
						<li><h3><a href="https://www.instagram.com/nomus.gdansk/" target="_blank">Instagram</a></h3></li>
						<li><h3><a href="https://vimeo.com/nomus/" target="_blank">Vimeo</a></h3></li>
						<!-- <li><h3><a href="https://issuu.com/nomus_gdansk/" target="_blank">Issuu</a></h3></li> -->
					</ul>
				</article>
			</section>
		</div>
	</xsl:template>

	<xsl:template name="newsletter">
		<xsl:choose>
			<xsl:when test="//current-language/@handle = 'pl'">
				<ul class="newsletter">
					<li>
						<form action="https://gda.us17.list-manage.com/subscribe/post?u=c6a57201c76eaa020f0a3c76a&amp;id=d0fd0c619d" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="novalidate">
							<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Okólnik NOMUS" autocomplete="off" />
							<input type="hidden" name="group[3769][2]" value="1" />
							<div id="mce-responses" class="clear">
								<div class="response" id="mce-error-response" style="display:none"></div>
								<div class="response" id="mce-success-response" style="display:none"></div>
							</div>
							<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c6a57201c76eaa020f0a3c76a_d0fd0c619d" tabindex="-1" value="" /></div>
							<input type="submit" value="→" name="subscribe" id="mc-embedded-subscribe" />
						</form>
					</li>
					<!--<li class="mailto"><h4><a href="mailto:nomus@gda.pl">nomus@gda.pl</a></h4></li>-->
				</ul>
			</xsl:when>
			<xsl:otherwise>
				<ul class="newsletter">
					<li>
						<form action="https://gda.us17.list-manage.com/subscribe/post?u=c6a57201c76eaa020f0a3c76a&amp;id=d4c53579a9" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="novalidate">
							<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Newsletter" autocomplete="off" />
							<input type="hidden" name="group[3781][1]" value="1" />
							<div id="mce-responses" class="clear">
								<div class="response" id="mce-error-response" style="display:none"></div>
								<div class="response" id="mce-success-response" style="display:none"></div>
							</div>
							<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c6a57201c76eaa020f0a3c76a_d4c53579a9" tabindex="-1" value="" /></div>
							<input type="submit" value="→" name="subscribe" id="mc-embedded-subscribe" />
						</form>
					</li>
				</ul>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="pages">
		<xsl:choose>
			<xsl:when test="//current-language/@handle = 'pl'">
				<ul class="pages">
					<li><h3><a href="{$root}/">Aktualności</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/zbiory/">Zbiory</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/kiosk/">Kiosk</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/o-nas/">O nas</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/blog/nomus-manifest/">Manifest</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/kontakt/">Kontakt</a></h3></li>
				</ul>
			</xsl:when>
			<xsl:otherwise>
				<ul class="pages">
					<!--
					<li><h3><a href="{$root}/">News</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/collection/">Collection</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/about-us/">About us</a></h3></li>
					-->
					<li><h3><a href="{$root}/{//current-language/@handle}/blog/nomus-manifest/">Manifesto</a></h3></li>
					<li><h3><a href="{$root}/{//current-language/@handle}/contact/">Contact</a></h3></li>
				</ul>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
