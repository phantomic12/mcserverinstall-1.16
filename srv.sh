FORGE_VERSION=
MOD_LINK=
SRV_IP=$(curl ifconfig.me)

wget https://maven.minecraftforge.net/net/minecraftforge/forge/$FORGE_VERSION/forge-$FORGE_VERSION-installer.jar
sudo apt-get -y install openjdk-11-jre-headless
java -jar forge-$FORGE_VERSION-installer.jar --installServer
rm forge-$FORGE_VERSION-installer.jar
sh start.sh
echo "eula=true" > eula.txt
mkdir mods && cd mods
wget $MOD_LINK
sudo apt-get -y install unzip
unzip *.zip
rm *.zip
cd ..
echo "All done, Enjoy!"
echo "Access the server at" $SRV_IP "and access the admin panel at" $SRV_IP:9090