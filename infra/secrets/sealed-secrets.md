# Sealed Secrets

## Installation

```sh
helm repo add sealed-secrets https://bitnami-labs.github.io/sealed-secrets 
```

```sh
helm install sealed-secrets -n secrets --set-string fullnameOverride=sealed-secrets-controller sealed-secrets/sealed-secrets
```
