<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
    xmlns:xproc="http://www.w3.org/TR/2006/xproc/1.0"
    xmlns:yax="http://opsdesign.de/yax/1.0">
    <xproc:step name="trans1" type="xproc:XSLT" 
        yax:description="transforms 'a*' elements to 'b*' elmenents.">
        <xproc:input port="stylesheet" href="examples/transformation1.1.xsl"/> 
    </xproc:step>
    <xproc:step name="trans2" type="xproc:XSLT" 
        yax:description="transforms 'b*' elements to 'c*' elmenents.">
        <xproc:input port="stylesheet" href="examples/transformation2.xsl"/>
    </xproc:step>
    <xproc:step name="trans3" type="xproc:XSLT" 
        yax:description="transforms 'c*' elements to 'd*' elmenents.">
        <xproc:input port="stylesheet" href="examples/transformation3.xsl"/> 
    </xproc:step>
</xproc:pipeline>
