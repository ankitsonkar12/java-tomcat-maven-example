From tomcat:8-jre8
RUN mkdir /usr/local/tomcat
WORKDIR /usr/local/tomcat/webapps

 
COPY /target/dependency/webapp-runner.war /usr/local/tomcat/webapps
CMD java -jar /usr/local/tomcat/webapps/webapp-runner.war


EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
