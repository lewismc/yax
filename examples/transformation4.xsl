<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml"
        indent="yes"
        />
    <xsl:template match="d">
        <xsl:element name="e">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="dd">
        <xsl:element name="ee">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="ddd">
        <xsl:element name="eee">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="*">
            <xsl:apply-templates/>
    </xsl:template>        
</xsl:stylesheet>
