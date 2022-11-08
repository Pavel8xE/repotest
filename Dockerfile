FROM tomcat:9.0.68-jdk11-temurin-jammy
RUN apt-get update && apt-get install -y git
WORKDIR /home
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /home/target/hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]