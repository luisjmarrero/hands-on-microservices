FROM openjdk:14.0.2-slim-buster AS base
WORKDIR /app
EXPOSE 8080

FROM gradle:jdk14 AS build
WORKDIR /src
COPY . /src
RUN gradle build -x test

FROM base AS final
WORKDIR /app
COPY --from=build /src/recommendation-service/build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]