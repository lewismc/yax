<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
    xmlns:xproc="http://www.w3.org/TR/2006/xproc/1.0"
    xmlns:yax="http://opsdesign.de/yax/1.0">
    <xproc:step name="trans1" type="xproc:XSLT">
        <xproc:input port="stylesheet" href="examples/transformation1.1.xsl"/> 
    </xproc:step>
    <xproc:choose name="choose1" type="xproc:XSLT">
        <xproc:input port="ref" href="examples/chooseInput0.xml"/>
        <xproc:when name="when1" test="/test1">
            <xproc:step name="trans2.1" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation2.xsl"/> 
            </xproc:step>
        </xproc:when>
        <xproc:when name="when2" test="/test2">
            <xproc:step name="trans2.2" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation2.xsl"/> 
            </xproc:step>            
        </xproc:when>
        <xproc:otherwise name="otherwise">
            <xproc:step name="trans2.3" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation2.xsl"/> 
            </xproc:step>
        </xproc:otherwise>
    </xproc:choose>
    <xproc:step name="trans3" type="xproc:XSLT">
        <xproc:input port="stylesheet" href="examples/transformation3.xsl"/> 
    </xproc:step>
</xproc:pipeline>
