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

	<xsl:template name="search-box">
		<section class="search-box">
			<form action="" method="get">
				<input type="text" name="keywords" autocomplete="off" autofocus="autofocus" placeholder="Wyszukaj..." value="{params/url-keywords}" />
				<!-- <input type="hidden" name="debug" /> -->
				<!--
				<input type="hidden" name="sort" value="score-recency" />
				<input type="hidden" name="per-page" value="10" />
				<input type="hidden" name="sections" value="articles,comments,categories" />
				-->
			</form>
		</section>
	</xsl:template>

</xsl:stylesheet>
