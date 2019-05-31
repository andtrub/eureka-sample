FROM openjdk:8u151-jdk-alpine

RUN apk --no-cache add curl
RUN apk --no-cache add jq

COPY /target/eureka-*[0-9].jar app.jar

ENTRYPOINT ["java","-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap","-jar","./app.jar"]

