@echo off

set cp=
set cp=%cp%;lib/de.opsdesign.yax.core.jar
set cp=%cp%;lib/xml-resolver-1.2.jar
set cp=%cp%;configuration
set cp=%cp%;.
set cp=%cp%;lib/apache-log4j-1.2.16/log4j-1.2.16.jar
set cp=%cp%;xalan-j/*.jar

set script=examples/example1.1.xproc
set in=examples/example1.1.xml
set out=test/example1.1.output.cmd.xml

java -classpath %cp% de.opsdesign.yax.Yax %script% %in% %out%
