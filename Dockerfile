FROM tomcat:9.0
LABEL maintainer="youremail@example.com"

# Copy the WAR file to the Tomcat webapps directory
COPY target/your-app.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]

