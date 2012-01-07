@echo off

set cp=
set cp=%cp%;lib\de.opsdesign.yax.core.jar
set cp=%cp%;lib\xml-resolver-1.2.jar
set cp=%cp%;configuration
set cp=%cp%;.
set cp=%cp%;c:\develop\apache-log4j-1.2.15\log4j-1.2.15.jar
set cp=%cp%;c:\develop\saxon6-5-3\saxon.jar

set script=examples/example1.2.xproc
set in=examples/example1.2.xml
set out=test/example1.2.output.cmd.xml

java -classpath %cp% de.opsdesign.yax.Yax %script% %in% %out%
