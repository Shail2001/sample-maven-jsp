# Pull base image 
From tomcat:10-jre11 

# Maintainer 
MAINTAINER "shailshah2112@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
