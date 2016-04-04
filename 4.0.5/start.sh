#!/bin/bash
set -e

wget -q http://downloads.sourceforge.net/project/jboss/JBoss/JBoss-4.0.5.GA/jboss-4.0.5.GA.zip && \
mv /jboss-4.0.5.GA ${JBOSS_HOME}

chmod +x /*.sh 

exec ${JBOSS_HOME}/bin/run.sh --host=0.0.0.0
