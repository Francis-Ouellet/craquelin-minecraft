sudo apt-get update
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/eula.txt eula.txt
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/server.properties server.properties
curl https://launcher.mojang.com/v1/objects/5d550762b9c82ab4fe9f259c14fcf7bf7ed8017a/server.jar > server.jar
java -Xms1G -Xmx3G -d64 -jar server.jar nogui
