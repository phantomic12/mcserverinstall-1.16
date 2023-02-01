FORGE_VERSION=36.2.34
MOD_LINK=https://cdn.discordapp.com/attachments/518525254495240192/1070161242590806137/mods.zip
SRV_IP=$(curl ifconfig.me)

wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-$FORGE_VERSION/forge-1.16.5-$FORGE_VERSION-installer.jar
sudo apt-get -y install openjdk-11-jre-headless
java -jar forge*-installer.jar --installServer
rm forge*-installer.jar
sh start.sh
echo "eula=true" > eula.txt
mkdir mods 
cd mods
wget $MOD_LINK
sudo apt-get -y install unzip
unzip *.zip
rm *.zip && rm OptiFine*.jar
cd ..
echo "All done, Enjoy!"
echo "Access the server at" $SRV_IP "and access the admin panel at" $SRV_IP:9090
