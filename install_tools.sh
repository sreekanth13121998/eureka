#!/bin/bash

# Update package lists
sudo apt update -y

# Install Java (OpenJDK 17)
sudo apt install -y openjdk-17-jdk
java -version

# Install Maven
sudo apt install -y maven
mvn -version

# Install Docker
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
docker --version

# Add Jenkins user to Docker group (to allow Jenkins to use Docker)
sudo usermod -aG docker jenkins

echo "Java, Maven, and Docker installed successfully!"
