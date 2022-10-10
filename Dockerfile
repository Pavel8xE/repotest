FROM ubuntu:20.04
RUN echo Europe/Moscow > /etc/timezone
RUN apt update && apt-get install -y default-jdk maven tomcat9 git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /home
RUN cd /home/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp ./hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]