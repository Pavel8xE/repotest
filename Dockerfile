FROM tomcat:9.0
RUN apt-get update && apt-get install -y maven git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp /target/hello-1.0.war ./webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]