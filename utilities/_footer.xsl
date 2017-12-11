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

	<xsl:template name="footer">
		<xsl:param name="lang" />
		<xsl:choose>
			<xsl:when test="$lang = 'en'">
				<xsl:call-template name="footer-en" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="footer-pl" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="footer-pl">
		<footer>
			<section class="newsletter">
				<form action="https://gda.us17.list-manage.com/subscribe/post?u=c6a57201c76eaa020f0a3c76a&amp;id=60e894667d" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate="novalidate">
					<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Prenumeruj newsletter NOMUS" />
					<div id="mce-responses" class="clear">
						<div class="response" id="mce-error-response" style="display:none"></div>
						<div class="response" id="mce-success-response" style="display:none"></div>
					</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
					<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c6a57201c76eaa020f0a3c76a_60e894667d" tabindex="-1" value="" /></div>
					<input type="submit" value="→" name="subscribe" id="mc-embedded-subscribe" />
				</form>
			</section>
			<section class="footer">
					<ul class="office">
						<li class="label">Biuro projektu</li>
						<li>Muzeum Narodowe w&nbsp;Gdańsku</li>
						<li>ul. Toruńska 1</li>
						<li>80-822 Gdańsk</li>
					</ul>
					<ul>
						<li class="label">NOMUS</li>
						<li><a href="{$root}/{//current-language/@handle}/o-nas/">O nas</a></li>
						<li>Program</li>
						<li><a href="{$root}/{//current-language/@handle}/kontakt/">Kontakt</a></li>
					</ul>
					<ul>
						<li class="label">Media</li>
						<li class="icon"><a href="https://www.facebook.com/nomus.gd/" target="_blank">&#x0066;</a></li>
						<li class="icon"><a href="https://twitter.com/nomus_gdansk/" target="_blank">&#xe800;</a></li>
						<li class="icon"><a href="https://www.instagram.com/nomus.gdansk/" target="_blank">&#x0069;</a></li>
						<li class="icon"><a href="https://vimeo.com/nomus/" target="_blank">&#x0076;</a></li>
					</ul>
			</section>

			<section class="logos">
				<ul class="mng">
					<li class="label">Oddział Muzeum Narodowego w&nbsp;Gdańsku</li>
					<li><a href="http://mng.bip.gov.pl/" target="_blank"><img src="{$workspace}/images/mng-logo.svg" alt=""/></a></li>
				</ul>
				<ul>
					<li class="label">Projekt dofinansowany ze środków Miasta Gdańska</li>
					<li><a href="http://www.gdansk.pl/" target="_blank"><img src="{$workspace}/images/mg-logo.svg" alt=""/></a></li>
				</ul>
				<ul class="mkidn">
					<li class="label">&nbsp;</li>
					<li><a href="http://www.mkidn.gov.pl/" target="_blank"><img src="{$workspace}/images/mkidn-logo.svg" alt=""/></a></li>
				</ul>
				<ul class="um">
					<li class="label">&nbsp;</li>
					<li><a href="https://pomorskie.eu/" target="_blank"><img src="{$workspace}/images/um.svg" alt=""/></a></li>
				</ul>
				<ul class="kd">
					<li class="label">&nbsp;</li>
					<li><a href="https://kulturadostepna.pl/" target="_blank"><img src="{$workspace}/images/kd.svg" alt=""/></a></li>
				</ul>
			</section>

		</footer>
	</xsl:template>

	<xsl:template name="footer-en">
		
	</xsl:template>

</xsl:stylesheet>