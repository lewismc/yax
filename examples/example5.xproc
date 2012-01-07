<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
    xmlns:xproc="http://www.w3.org/TR/2006/xproc/1.0"
    xmlns:yax="http://opsdesign.de/yax/1.0">
    <xproc:step name="Load1" type="xproc:Load" href="${examples.dir}/${inputFilename}"/>
    <xproc:step name="XInclude" type="xproc:XInclude"/>
    <xproc:step name="Store1" type="xproc:Store" href="${test.dir}/${outputFilename}"/>
</xproc:pipeline>
