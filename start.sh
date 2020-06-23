sudo apt-get update
sudo apt-get install -y default-jre-headless
sudo mkdir -p /home/minecraft
cd /home/minecraft
sudo su
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/eula.txt eula.txt
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/server.properties server.properties
gsutil cp gs://craquelin-web.appspot.com/minecraftconfigs/ops.json ops.json
gsutil -m cp gs://craquelin-web.appspot.com/minecraftconfigs/world/datapacks/*.zip world/datapacks/
curl https://launcher.mojang.com/v1/objects/a0d03225615ba897619220e256a266cb33a44b6b/server.jar > server.jar
java -Xms1G -Xmx3G -d64 -jar server.jar nogui
