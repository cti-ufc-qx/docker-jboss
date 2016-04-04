#!/bin/bash

mv /jboss-4.0.5.GA ${JBOSS_HOME}

exec ${JBOSS_HOME}/bin/run.sh --host=0.0.0.0
