FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY . .

RUN ./mvnw -pl quarkus/deployment,quarkus/dist -am -DskipTests clean install
# RUN ./mvnw package -pl quarkus/deployment -am -DskipTests

# FROM openjdk:17-jdk-slim

# COPY --from=builder /app/quarkus/deployment/target/keycloak-*.tar.gz /app/keycloak.tar.gz
