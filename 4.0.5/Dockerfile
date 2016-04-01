FROM java:8-jre
MAINTAINER Coordenadoria de Tecnologia da Informação <ccti@quixada.ufc.br>

ENV JBOSS_HOME /usr/local/jboss
ENV PATH $JBOSS_HOME/bin:$PATH
RUN mkdir -p "$JBOSS_HOME"
WORKDIR $JBOSS_HOME

RUN apt-get update && \
    apt-get install -y pwgen unzip && \
    wget -q http://downloads.sourceforge.net/project/jboss/JBoss/JBoss-4.0.5.GA/jboss-4.0.5.GA.zip && \
    unzip -q jboss-4.0.5.GA.zip && \
    rm jboss-4.0.5.GA.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#RUN locale-gen en_US.UTF-8 pt_BR.UTF-8
#ENV LANG en_US.UTF-8 pt_BR.UTF-8
#ENV LANG en_US.UTF-8 pt_BR.UTF-8
#ENV LANG en_US.UTF-8 pt_BR.UTF-8
    
#ENV JBOSS_DEPLOY /jboss_4.0.5.GA/server/default/deploy
#ENV JBOSS_LIB_APPS /jboss_4.0.5.GA/server/default/lib 

ENV JBOSS_DEPLOY ${JBOSS_HOME}/jboss_4.0.5.GA/server/default/deploy
ENV JBOSS_LIB_APPS ${JBOSS_HOME}/jboss_4.0.5.GA/server/default/lib

#ADD jmx-console.web.xml /jboss-4.2.3.GA/server/default/deploy/jmx-console.war/WEB-INF/web.xml
#ADD jmx-console.jboss-web.xml /jboss-4.2.3.GA/server/default/deploy/jmx-console.war/WEB-INF/jboss-web.xml
#ADD web-console.web.xml /jboss-4.2.3.GA/server/default/deploy/management/console-mgr.sar/web-console.war/WEB-INF/web.xml
#ADD web-console.jboss-web.xml /jboss-4.2.3.GA/server/default/deploy/management/console-mgr.sar/web-console.war/WEB-INF/jboss-web.xml

ADD start.sh /start.sh
RUN chmod +x /start.sh

VOLUME ["${JBOSS_DEPLOY}", "${JBOSS_LIB_APPS}"]
EXPOSE 8080

CMD ["/start.sh"]
