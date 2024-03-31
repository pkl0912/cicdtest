FROM amd64/amazoncorretto:17

WORKDIR /app

COPY ./build/libs/cicdtest-0.0.1-SNAPSHOT.jar /app/cicd.jar

RUN chmod +rwx /app/cicd.jar

CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=dev", "/app/cicdtest.jar"]
