#!/bin/bash

# default log directory & file
if [ "$YAX_LOG_DIR" = "" ]; then
  YAX_LOG_DIR="$YAX_HOME/logs"
fi
if [ "$YAX_LOGFILE" = "" ]; then
  YAX_LOGFILE='yax.log'
fi

CLASSPATH=
CLASSPATH=${CLASSPATH}:lib/de.opsdesign.yax.core.jar
CLASSPATH=${CLASSPATH}:lib/xml-resolver-1.2.jar
CLASSPATH=${CLASSPATH}:configuration
CLASSPATH=${CLASSPATH}:.
CLASSPATH=${CLASSPATH}:lib/log4j-1.2.16.jar
CLASSPATH=${CLASSPATH}:lib/serializer.jar
CLASSPATH=${CLASSPATH}:lib/xalan.jar
CLASSPATH=${CLASSPATH}:lib/xercesimpl.jar
CLASSPATH=${CLASSPATH}:lib/xml-apis.jar
CLASSPATH=${CLASSPATH}:lib/xsltc.jar

script=examples/example1.2.xproc
in=examples/example1.2.xml
out=test/example1.2.output.cmd.xml

java -classpath ${CLASSPATH} de.opsdesign.yax.Yax ${script} ${in} ${out}
