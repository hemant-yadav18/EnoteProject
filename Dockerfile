# Use official Tomcat image
FROM tomcat:9.0

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat
COPY EnotesProject.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat default port
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
