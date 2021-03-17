FROM openjdk:11.0-jdk-slim
VOLUME /tmp
COPY /target/Product-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 7777
ENV JAVA_OPTS=""
RUN sh -c "touch Product-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Product-0.0.1-SNAPSHOT.jar" ]
