sudo apt-get update
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/eula.txt eula.txt
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/server.properties server.properties
curl https://launcher.mojang.com/v1/objects/353cc74b9aefd4675730449f50f5c0066063ac3f/server.jar > server.jar
java -Xms1G -Xmx3G -d64 -jar server.jar nogui
