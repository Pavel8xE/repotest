FROM tomcat:9.0.68-jdk11-temurin-jammy
RUN apt-get update && apt-get install -y maven git
WORKDIR /home
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
RUN cp ./target/hello-1.0.war ./webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]