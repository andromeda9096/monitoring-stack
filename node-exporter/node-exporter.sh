#!/bin/bash
echo "Bat dau cai dat..."
echo ""
echo "Updating Packages..."
echo ""
echo ""
sleep 2s

sudo apt update

echo ""
echo ""
echo "Install Prerequisite Packages..."
echo ""
echo ""
sleep 2s

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

echo ""
echo ""
echo "download and install node-exporter"
echo ""
echo ""
sleep 2s
sudo curl -s https://api.github.com/repos/prometheus/node_exporter/releases/latest| grep browser_download_url|grep linux-amd64|cut -d '"' -f 4|wget -qi -

tar -xvf node_exporter*.tar.gz
cd  node_exporter*/
sudo cp node_exporter /usr/local/bin

sudo tee /etc/systemd/system/node_exporter.service <<EOF
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=${USER}
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=default.target
EOF

sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter

systemctl status node_exporter.service | grep running 
sleep 2s
echo ""
echo ""
echo "Done !! http://ip_host:9100 "
echo ""
echo ""
sleep 2s

