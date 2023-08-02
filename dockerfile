FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y nano wget

RUN touch nuovo.txt && \
    echo "Prova" >> nuovo.txt && \
    echo "Ciao" >> nuovo.txt && \
    echo "Altra prova bellissima" >> nuovo.txt
    echo "aaaa" >> nuovo.txt

RUN wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.65/bin/apache-tomcat-7.0.65.tar.gz && \
    tar -xzf apache-tomcat-7.0.65.tar.gz -C /opt
ENV CATALINA_HOME /opt/apache-tomcat-7.0.65
ENV PATH $CATALINA_HOME/bin:$PATH
