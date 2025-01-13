FROM tomcat:9.0

ADD war/CoupangSpring.war /usr/local/tomcat/webapps/ROOT.war

# CMD ["catalina.sh", "run"]