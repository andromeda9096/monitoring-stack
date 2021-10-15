
## Instruction
https://sysad.tech/vi/monitoring
## Install Agent
### Node-exporter on target

- docker-compose for Node-exporter and Cadviser

```
curl -sSL https://raw.githubusercontent.com/andromeda9096/prometheus/main/node-exporter/docker-compose.yaml > docker-compose.yml
docker-compose up -d 
```

- Linux64:

```
curl -sSL https://raw.githubusercontent.com/andromeda9096/prometheus/main/node-exporter/node-exporter.sh > node-exporter.sh && \
chmod +x node-exporter.sh && ./node-exporter.sh 
```

- Window: https://github.com/prometheus-community/windows_exporter , open wwindow firewall port :9182

### zabbix agent
https://www.zabbix.com/download_agents

### Telegraf
https://docs.influxdata.com/telegraf/v1.20/introduction/installation/





