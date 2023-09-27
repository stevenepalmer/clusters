# Installation

- Applied CRDS

```notes
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.0/cert-manager.crds.yaml
```

- Helm Install

```sh
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.13.0
```