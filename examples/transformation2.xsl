<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml"
        indent="yes"
        />
    <xsl:template match="b">
        <xsl:element name="c">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="bb">
        <xsl:element name="cc">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="bbb">
        <xsl:element name="ccc">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="*">
            <xsl:apply-templates/>
    </xsl:template>        
</xsl:stylesheet>
