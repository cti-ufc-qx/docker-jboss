#!/bin/bash
set -e

mv /jboss-4.0.5.GA ${JBOSS_HOME}
 
chmod +x /*.sh 

exec ${JBOSS_HOME}/bin/run.sh --host=0.0.0.0
