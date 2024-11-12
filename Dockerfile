# Start from an official Tomcat image
FROM tomcat:9.0-jdk11

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Expose the port where Tomcat will run
EXPOSE 8100

# Copy the WAR file to the Tomcat webapps directory
# Assuming that `target/MyMavenApp.war` is the output WAR file after building with Maven
COPY target/MyMavenApp.war $CATALINA_HOME/webapps/MyMavenApp.war

# Start Tomcat server
CMD ["catalina.sh", "run"]
