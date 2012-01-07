#!/bin/bash

# default log directory & file
if [ "$YAX_LOG_DIR" = "" ]; then
  YAX_LOG_DIR="$YAX_HOME/logs"
fi
if [ "$YAX_LOGFILE" = "" ]; then
  YAX_LOGFILE='yax.log'
fi

CLASPATH=.
CLASPATH=${CLASSPATH}:lib/de.opsdesign.yax.core.jar
CLASPATH=${CLASSPATH}:lib/xml-resolver-1.2.jar
CLASPATH=${CLASSPATH}:custom
CLASPATH=${CLASSPATH}:configuration
CLASPATH=${CLASSPATH}:./
CLASPATH=${CLASSPATH}:lib/apache-log4j-1.2.16/log4j-1.2.16.jar

fopDir=lib/fop-1.0

CLASPATH=${CLASSPATH}:${fopDir}/lib/avalon-framework-4.2.0.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/batik-all-1.7.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/commons-io-1.3.1.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/commons-logging-1.0.4.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/serializer-2.7.0.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/xalan-2.7.0.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/xercesImpl-2.7.1.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/xml-apis-1.3.04.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/xmlgraphics-commons-1.4.jar
CLASPATH=${CLASSPATH}:${fopDir}/lib/xml-apis-ext-1.3.04.jar
CLASPATH=${CLASSPATH}:${fopDir}/build/fop.jar

script=examples/example8.xproc

params=
params=${params}:-Dexamples.data.dir=examples/fop/xml 
params=${params}:-Dexamples.script.dir=examples/fop/xslt 
params=${params}:-Dtest.dir=test 
params=${params}:-DxmlInput=projectteam.xml 
params=${params}:-Dxml2foScript=projectteam2fo.xsl 
params=${params}:-DpdfOutput=example8.pdf

java -classpath ${CLASSPATH} de.opsdesign.yax.Yax ${script} ${params}
