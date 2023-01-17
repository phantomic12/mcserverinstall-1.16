sudo apt update
sudo apt install cockpit firewalld -y
sudo systemctl start cockpit
sudo ufw allow 9090/tcp
sudo firewall-cmd --permanent --zone=public --add-port=25565/tcp
sudo firewall-cmd --permanent --zone=public --add-port=9090/tcp