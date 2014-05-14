<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output media-type="xml" indent="yes"/>
    <xsl:strip-space elements="*" />
    <xsl:template match="/">
        <popularity>
            <xsl:apply-templates select="//tr[td/strong]">
            </xsl:apply-templates>
        </popularity>
    </xsl:template>
    <xsl:template match="tr">
        <exam name="{normalize-space(td[1])}" popularity="{translate(normalize-space(td[2]),' ', '')}">
            <!--<xsl:value-of select=".//td[1]/strong/text()" />-->

        </exam>

    </xsl:template>
</xsl:stylesheet>