FROM amd64/amazoncorretto:17

WORKDIR /app

COPY --chown=root:root ./build/libs/cicdtest-0.0.1-SNAPSHOT.jar /app/cicd.jar

CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=dev", "cicdtest.jar"]
