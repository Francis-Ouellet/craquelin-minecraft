sudo apt-get update
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
gsutil
curl https://launcher.mojang.com/v1/objects/6f27430bcd9b06d3dcb5d2966c75d5e491915c9c/server.jar > server.jar
java -Xms1G -Xmx3G -d64 -jar server.jar nogui