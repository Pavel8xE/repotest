FROM ubuntu:20.04
RUN apt-get install default-jdk
RUN apt-get install maven
RUN apt-get install tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 
RUN cd ./boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp ./hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080