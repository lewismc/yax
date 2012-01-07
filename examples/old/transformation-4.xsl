<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        method="xml"
        indent="yes"
        />
    <xsl:strip-space elements="*"/>
    <xsl:template match="e">
        <xsl:element name="d">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="ee">
        <xsl:element name="dd">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="eee">
        <xsl:element name="ddd">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="*">
            <xsl:apply-templates/>
    </xsl:template>        
</xsl:stylesheet>
