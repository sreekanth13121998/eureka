git clone https://github.com/sreekanth13121998/eureka.git
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
ps -ef | grep jenkins
sudo apt install maven -y
maven --version
mvn --version
systemctl status jenkins
nano install_tools
ll
rm- rf install_tools 
ll
rm  -rf install_tools 
ll
nano install_tools.sh
chmod +x install_tools.sh
./install_tools.sh
mvn --version
java --version 
cat install_tools.sh 
sudo apt remove --purge maven -y
sudo rm -rf /usr/share/maven /etc/maven /usr/bin/mvn
sudo apt remove --purge openjdk-21-jdk openjdk-21-jre -y
sudo apt autoremove --purge openjdk* -y
mvn --version
java --version
./install_tools.sh 
mvn --version
java --version
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
ps -ef | grep jenkins
sudo apt update && sudo apt upgrade -y
sudo systemctl stop jenkins
sudo apt remove --purge jenkins -y
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
sudo rm -rf /var/lib/jenkins
sudo rm -rf /var/log/jenkins
sudo rm -rf /etc/jenkins
sudo apt update && sudo apt upgrade -y
sudo apt install -y openjdk-17-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
ps -ef | grep jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
maven --version
mvn --version
ll
cd eureka/
ll
nano jenkinsfile
pwd
cd j
ll
docker --version
ll
nano Dockerfile
nano jenkinsfile
mvn --version 
git add .
git add Dockerfile jenkinsfile
git init
git add .
git add Dockerfile jenkinsfile
git commit -m "Initial commit"
git push -u origin main
git status
git push -u origin main
git branch -m main
git push -u origin main
git remote add origin https://github.com/sreekanth13121998/eureka.git
git remote -v
git push -u origin main
git pull --rebase origin main
git push -u origin main
git push --force origin main
mvn --version
docker --version 
ll
sudo usermod -aG docker jenkins
systemctl restart jenkins
cd /var/lib/jenkins/workspace/eureka-pipeline
ll
docker ps
nano install_sonarqube.sh
chmod +x install_sonarqube.sh 
./install_sonarqube.sh 
systemctl restart jenkins.service 
cd /var/lib/jenkins/workspace/eureka-pipeline
ll
docker pa
docker ps
cd 
ll
cd /var/lib/jenkins/workspace/eureka-pipeline
l
docker ps
sudo systemctl restart sonarqube
sudo systemctl status sonarqube
docker restart sonarqube
sudo ufw allow 9000/tcp
cd /var/lib/jenkins/workspace/sonarqube
ll
docker ps
cd 
sudo su- jenkins
sudo su - jenkins
