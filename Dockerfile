FROM amazoncorretto:21 AS build
COPY ./ /home/app
RUN cd /home/app && ./gradlew build

FROM amazoncorretto:21-alpine
COPY --from=build /home/app/build/libs/renderTest-0.0.1-SNAPSHOT.jar /usr/local/lib/renderTest.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dfile.encoding=UTF-8","/usr/local/lib/renderTest.jar"]
