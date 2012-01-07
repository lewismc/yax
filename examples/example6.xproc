<?xml version="1.0" encoding="UTF-8"?>
<xproc:pipeline name="pipe1" 
	xmlns:xproc="http://www.w3.org/TR/2006/xproc/1.0" 
	xmlns:yax="http://opsdesign.de/yax/1.0">
	<xproc:step name="XSLT1" type="xproc:XSLT">
		<xproc:input port="stylesheet" href="examples/parameter1.xsl"/>
		<xproc:parameter name="param1" value="${param1}"/>
		<xproc:parameter name="param2" value="${param2}"/>
	</xproc:step>
</xproc:pipeline>
