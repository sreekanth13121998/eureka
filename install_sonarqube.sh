#!/bin/bash

# Step 1: Update System Packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Step 2: Install Required Dependencies
echo "Installing required dependencies..."
sudo apt install -y openjdk-17-jdk wget unzip net-tools

# Step 3: Create a Dedicated SonarQube User
echo "Creating SonarQube user..."
sudo useradd -m -d /opt/sonarqube -s /bin/bash sonarqube
sudo passwd sonarqube
sudo usermod -aG sudo sonarqube

# Step 4: Switch to SonarQube User & Install SonarQube
echo "Installing SonarQube..."
sudo su - sonarqube << 'EOF'
SONAR_VERSION="9.9.2.77730"

# Download SonarQube
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip

# Extract and Setup SonarQube
unzip sonarqube-$SONAR_VERSION.zip
mv sonarqube-$SONAR_VERSION sonarqube
rm sonarqube-$SONAR_VERSION.zip
EOF

# Step 5: Create SonarQube System Service
echo "Creating SonarQube system service..."
sudo tee /etc/systemd/system/sonarqube.service > /dev/null <<EOL
[Unit]
Description=SonarQube service
After=syslog.target network.target

[Service]
Type=forking
ExecStart=/opt/sonarqube/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonarqube
Group=sonarqube
Restart=always
LimitNOFILE=65536
LimitNPROC=4096

[Install]
WantedBy=multi-user.target
EOL

# Step 6: Set Permissions and Start SonarQube
echo "Setting permissions and starting SonarQube..."
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo chmod -R 775 /opt/sonarqube
sudo systemctl daemon-reload
sudo systemctl enable --now sonarqube

# Step 7: Display SonarQube Status
echo "SonarQube installation completed!"
sudo systemctl status sonarqube --no-pager
