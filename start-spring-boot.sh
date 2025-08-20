#!/bin/bash

# Find Java installation
export JAVA_HOME=$(find /nix/store -name "*openjdk*" -type d | head -1)
export PATH=$JAVA_HOME/bin:$PATH

echo "Using Java: $(which java)"
echo "Java version: $(java -version 2>&1 | head -1)"

cd backend

# Download Maven if not present
if [ ! -f .mvn/wrapper/maven-wrapper.jar ]; then
    echo "Downloading Maven wrapper..."
    mkdir -p .mvn/wrapper
    curl -L https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.1/maven-wrapper-3.1.1.jar -o .mvn/wrapper/maven-wrapper.jar
fi

echo "Starting Spring Boot application..."
./mvnw spring-boot:run -DskipTests