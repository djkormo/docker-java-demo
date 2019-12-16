# building image

FROM maven:3.5.2-jdk-8 AS build  
COPY app/src /usr/src/app/src  
COPY app/pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

# target image 

FROM openjdk:8  

MAINTAINER DjKormo <djkormo@gmail.com>

COPY --from=build /usr/src/app/target/app-0.0.1-SNAPSHOT.jar /usr/app/app-0.0.1-SNAPSHOT.jar 
EXPOSE 8080  
ENTRYPOINT ["java","-jar","/usr/app/app-0.0.1-SNAPSHOT.jar"]  

