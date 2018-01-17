FROM tomcat:9.0.2-jre8-alpine

LABEL maintainer="iermilov@informatik.uni-leipzig.de"

RUN rm -rf /usr/local/tomcat/webapps/*
COPY linklion2_wserv.war /usr/local/tomcat/webapps/ROOT.war
