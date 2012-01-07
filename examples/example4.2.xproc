<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
    xmlns:xproc="http://www.w3.org/TR/2006/xproc/1.0"
    xmlns:yax="http://opsdesign.de/yax/1.0">
    <xproc:try name="try1">
        <xproc:group name="group1">
            <xproc:step name="group1step1" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation2.xs"/>
            </xproc:step>
        </xproc:group>
        <xproc:catch name="catch1" exception="EmptyResult">
            <xproc:step name="catch1step2" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation1.1.xsl"/>
            </xproc:step>
        </xproc:catch>
        <xproc:catch name="catch2" exception="FileNotFound">
            <xproc:step name="catch2step2" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation1.1.xsl"/>
            </xproc:step>
        </xproc:catch>
        <xproc:catch name="catch">
            <xproc:step name="catchstep2" type="xproc:XSLT">
                <xproc:input port="stylesheet" href="examples/transformation1.1.xsl"/>
            </xproc:step>
        </xproc:catch>
    </xproc:try>
</xproc:pipeline>
