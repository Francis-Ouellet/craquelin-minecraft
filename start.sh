sudo apt-get update
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/eula.txt eula.txt
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/server.properties server.properties
curl https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar > server.jar
java -Xms1G -Xmx3G -d64 -jar server.jar nogui
