FROM ubuntu:18.04
RUN apt-get install default-jdk
RUN apt-get install maven
RUN apt-get install tomcat9
RUN git clone 
RUN mvn package https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
EXPOSE 8080
