FROM amazoncorretto:11 
VOLUME /tmp
COPY target/flow-config-server-0.0.1-SNAPSHOT.jar ConfigServer.jar 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","ConfigServer.jar"] 