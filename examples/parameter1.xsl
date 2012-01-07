<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml" 
        indent="yes"
        />
    <xsl:param name="param1">notPassedToScript</xsl:param>
    <xsl:param name="param2">notPassedToScript</xsl:param>
    <xsl:param name="param3">notPassedToScript</xsl:param>
    
    <xsl:template match="/">
        <xsl:element name="result">
        <xsl:element name="param1">
            <xsl:value-of select="$param1" />
        </xsl:element>
        <xsl:element name="param2">
            <xsl:value-of select="$param2" />
        </xsl:element>
        <xsl:element name="param3">
            <xsl:value-of select="$param3" />
        </xsl:element>
        </xsl:element>            
    </xsl:template>        
    <xsl:template match="*">
    </xsl:template>        
</xsl:stylesheet>
