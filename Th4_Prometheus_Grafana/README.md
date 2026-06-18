# Th4 - Prometheus Monitoring with Grafana

## Objective

Deploy Prometheus and Grafana to collect and visualize system metrics.

## Components Used

* Prometheus
* Grafana
* Node Exporter
* Docker Compose

## Architecture

Node Exporter collects system metrics such as CPU, Memory, Disk, and Network usage.

Prometheus scrapes metrics from Node Exporter and stores them.

Grafana connects to Prometheus and visualizes the metrics through dashboards.

## Files

* `docker-compose.yml` - Deploys Prometheus, Grafana, and Node Exporter
* `prometheus.yml` - Prometheus scrape configuration

## Deployment

Start all services:

```bash
docker compose up -d
```

Verify running containers:

```bash
docker ps
```

## Access URLs

Prometheus:

http://localhost:9090

Grafana:

http://localhost:3001

Node Exporter:

http://localhost:9100/metrics

## Deliverables

* Prometheus deployed
* Grafana deployed
* Metrics collection configured
* Monitoring dashboard created
