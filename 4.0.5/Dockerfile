FROM java:8-jre
MAINTAINER Coordenadoria de Tecnologia da Informação <ccti@quixada.ufc.br>

ENV JBOSS_HOME /usr/local/jboss
ENV JBOSS_DEPLOY ${JBOSS_HOME}/server/default/deploy
ENV JBOSS_LIB  ${JBOSS_HOME}/server/default/lib

RUN apt-get update && \
    apt-get install -y unzip locales && \
    unzip -q jboss-4.0.5.GA.zip && \
    rm jboss-4.0.5.GA.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN locale-gen en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8

#RUN mv /jboss-4.0.5.GA ${JBOSS_HOME}

ADD start.sh /start.sh
RUN chmod +x /*.sh

ENV PATH $JBOSS_HOME/bin:$PATH
RUN mkdir -p "$JBOSS_HOME"
WORKDIR $JBOSS_HOME 

VOLUME ["${JBOSS_DEPLOY}", "${JBOSS_LIB}"]
EXPOSE 8080

CMD ["/start.sh"]
#CMD ["bash"]
