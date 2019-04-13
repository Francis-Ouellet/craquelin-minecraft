echo Minecraft installation starting
sudo apt-get update
echo Updating JRE
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
echo Downloading Minecraft configs
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/eula.txt eula.txt
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/server.properties server.properties
curl https://launcher.mojang.com/v1/objects/6f27430bcd9b06d3dcb5d2966c75d5e491915c9c/server.jar > server.jar
echo Starting server
java -Xms1G -Xmx3G -d64 -jar server.jar nogui