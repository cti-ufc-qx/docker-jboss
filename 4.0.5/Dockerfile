FROM java:8-jre
MAINTAINER Coordenadoria de Tecnologia da Informação <ccti@quixada.ufc.br>

ENV JBOSS_HOME /usr/local/jboss

RUN apt-get update && \
    apt-get install -y unzip locales && \
    wget -q http://downloads.sourceforge.net/project/jboss/JBoss/JBoss-4.0.5.GA/jboss-4.0.5.GA.zip && \
    unzip -q jboss-4.0.5.GA.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
RUN locale-gen en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8
ENV LANG en_US.UTF-8 pt_BR.UTF-8

RUN mv /jboss-4.0.5.GA ${JBOSS_HOME}

ADD start.sh /start.sh
RUN chmod +x /*.sh

ENV PATH $JBOSS_HOME/bin:$PATH
RUN mkdir -p "$JBOSS_HOME"
WORKDIR $JBOSS_HOME  

EXPOSE 8080

#CMD ["/start.sh"]
CMD ["${JBOSS_HOME}/bin/run.sh", "-b", "0.0.0.0"]
