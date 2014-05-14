<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output media-type="xml" indent="yes"/>
    <xsl:strip-space elements="*" />
    <xsl:template match="node() |@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="popularity">

        <xsl:copy>
            <xsl:apply-templates>
            <xsl:sort select="@popularity" data-type="number" case-order="descending"/>
            </xsl:apply-templates>
        </xsl:copy>

    </xsl:template>
</xsl:stylesheet>