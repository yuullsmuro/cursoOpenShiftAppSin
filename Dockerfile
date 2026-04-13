FROM maven:3.9.9-eclipse-temurin-17 AS builder
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn -B -DskipTests clean package

FROM quay.io/wildfly/wildfly:26.1.3.Final-jdk17
COPY --from=builder /build/target/Aplicacion.war /opt/jboss/wildfly/standalone/deployments/ROOT.war
EXPOSE 8080
