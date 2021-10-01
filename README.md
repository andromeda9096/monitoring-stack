# Prometheus + Grafana
- Free port: 8080,9090,9093,9091,9091

### 1/ Install Stack
```
git clone https://github.com/andromeda9096/prometheus.git
cd ./prometheus
docker-compose up -d 
```
#### Stack
- Prometheus
- Grafana
- Node-exporter
- Cadvisor

### 2/Login Web UI

prometheus: ip_host:9090

grafana: ip_host:3000

### 3/Install Node-exporter on target

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







