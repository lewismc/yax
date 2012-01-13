<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
    xmlns:xproc="http://www.w3.org/TR/xproc/"
    xmlns:yax="http://opsdesign.de/yax/1.0">
    <xproc:step name="Load xml file" type="xproc:Load" href="${examples.data.dir}/${xmlInput}"/>
    <xproc:step name="transform to fo" type="xproc:XSLT">
        <xproc:input port="stylesheet" href="${examples.script.dir}/${xml2foScript}"/> 
    </xproc:step>
    <xproc:step name="write pdf" type="yax:FOP" href="${test.dir}/${pdfOutput}"/>
</xproc:pipeline>
