@echo off

set cp=
set cp=%cp%;lib\de.opsdesign.yax.core.jar
set cp=%cp%;lib\xml-resolver-1.2.jar
set cp=%cp%;custom
set cp=%cp%;configuration
set cp=%cp%;.
set cp=%cp%;c:\develop\apache-log4j-1.2.15\log4j-1.2.15.jar
set cp=%cp%;c:\develop\saxon6-5-3\saxon.jar

set fop.dir=c:\develop\fop-0.94

set cp=%cp%;%fop.dir%\lib\avalon-framework-4.2.0.jar
set cp=%cp%;%fop.dir%\lib\batik-all-1.6.jar
set cp=%cp%;%fop.dir%\lib\commons-io-1.3.1.jar
set cp=%cp%;%fop.dir%\lib\commons-logging-1.0.4.jar
set cp=%cp%;%fop.dir%\lib\serializer-2.7.0.jar
set cp=%cp%;%fop.dir%\lib\xalan-2.7.0.jar
set cp=%cp%;%fop.dir%\lib\xercesImpl-2.7.1.jar
set cp=%cp%;%fop.dir%\lib\xml-apis-1.3.02.jar
set cp=%cp%;%fop.dir%\lib\xmlgraphics-commons-1.2.jar
set cp=%cp%;%fop.dir%\build\fop.jar

set script=examples/example8.xproc

set params=
set params=%params%-Dexamples.data.dir=examples/fop/xml 
set params=%params%-Dexamples.script.dir=examples/fop/xslt 
set params=%params%-Dtest.dir=test 
set params=%params%-DxmlInput=projectteam.xml 
set params=%params%-Dxml2foScript=projectteam2fo.xsl 
set params=%params%-DpdfOutput=example8.pdf

java -classpath %cp% de.opsdesign.yax.Yax %script% %params%
