FROM tomcat:8.5

ADD CoupangSpring.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080