<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml"
        indent="yes"
        />
    <xsl:template match="/">
        <xsl:element name="transformerInfos">
            <xsl:attribute name="version">
                <xsl:value-of select="system-property('xsl:version')"/>
            </xsl:attribute>
            <xsl:attribute name="vendor">
                <xsl:value-of select="system-property('xsl:vendor')"/>
                </xsl:attribute>
            <xsl:attribute name="vendor-url">
                <xsl:value-of select="system-property('xsl:vendor-url')"/>
            </xsl:attribute>
        </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>        
</xsl:stylesheet>
