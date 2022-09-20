sudo apt update
sudo apt install openjdk-8-jre-headless
sudo apt install net-tools

cd /opt
sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz
sudo adduser nexus
sudo chown -R nexus:nexus /opt/nexus
sudo chown -R nexus:nexus /opt/sonatype-work
vim nexus-3.30.1-01/bin/nexus.rc
run_as_user="nexus"
su - nexus
/opt/nexus-3.30.1-01/bin/nexus start