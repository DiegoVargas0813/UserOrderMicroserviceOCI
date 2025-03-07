FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-A01635782
COPY /target/*.jar oci-microservice-A01635782.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice-A01635782/Wallet_javadev101
ENV TNS_ADMIN=/oci-microservice-A01635782/Wallet_javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-A01635782.jar" ]