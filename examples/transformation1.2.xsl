<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:import href="http://www.opsdesign.eu/examples/transformation0.xsl"/>
    
    <xsl:output
        method="xml" 
        indent="yes"
        />
    <xsl:template match="a">
        <xsl:element name="b">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="aa">
        <xsl:element name="bb">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>        
    <xsl:template match="aaa">
        <xsl:element name="bbb">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
