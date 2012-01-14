#!/bin/bash

# default log directory & file
if [ "$YAX_LOG_DIR" = "" ]; then
  YAX_LOG_DIR="$YAX_HOME/logs"
fi
if [ "$YAX_LOGFILE" = "" ]; then
  YAX_LOGFILE='yax.log'
fi

CLASSPATH=.
CLASSPATH=${CLASSPATH}:lib/de.opsdesign.yax.core.jar
CLASSPATH=${CLASSPATH}:lib/de.opsdesign.yax.ant.jar
CLASSPATH=${CLASSPATH}:lib/xml-resolver-1.2.jar
CLASSPATH=${CLASSPATH}:custom
CLASSPATH=${CLASSPATH}:configuration
CLASSPATH=${CLASSPATH}:./
CLASSPATH=${CLASSPATH}:lib/log4j-1.2.16.jar
CLASSPATH=${CLASSPATH}:lib/serializer.jar
CLASSPATH=${CLASSPATH}:lib/xalan.jar
CLASSPATH=${CLASSPATH}:lib/xercesImpl.jar
CLASSPATH=${CLASSPATH}:lib/xml-apis.jar
CLASSPATH=${CLASSPATH}:lib/xsltc.jar

examplesDir=examples
stsDir=${examplesDir}/sts
xsltDir=${examplesDir}/xslt
testDir=test
#script=${examplesDir}/example8.xproc

#params=
#params=${params}:-Dexamples.data.dir=examples/fop/xml 
#params=${params}:-Dexamples.script.dir=examples/fop/xslt 
#params=${params}:-Dtest.dir=test 
#params=${params}:-DxmlInput=projectteam.xml 
#params=${params}:-Dxml2foScript=projectteam2fo.xsl 
#params=${params}:-DpdfOutput=example8.pdf



java -cp ${CLASSPATH} org.apache.xalan.xslt.Process -IN ${stsDir}/0.1.html -XSL ${xsltDir}/stripMarkup.xsl -OUT ${testDir}/0.1.xml

# de.opsdesign.yax.Yax ${script} ${params}
