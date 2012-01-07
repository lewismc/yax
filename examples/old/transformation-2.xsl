<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml"
        indent="yes"
        />
    <xsl:template match="c">
        <xsl:element name="b">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="cc">
        <xsl:element name="bb">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="ccc">
        <xsl:element name="bbb">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="*">
        <xsl:apply-templates/>
    </xsl:template>        
</xsl:stylesheet>
