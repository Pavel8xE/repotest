FROM ubuntu:20.04
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install tomcat9 -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home
RUN cd /home/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp ./hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]