# Metrics Server

## Installation

```sh
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update
helm upgrade --install metrics-server metrics-server/metrics-server -n monitoring --kubelet-insecure-tls
```
