[[_ TOC _]]
# MetalLB

```notes
https://metallb.universe.tf/installation/
```

1) Edit KubeProxy ConfigMap

    ```sh
    kubectl edit configmap -n kube-system kube-proxy

    # Set strictARP to true
    apiVersion: kubeproxy.config.k8s.io/v1alpha1
    kind: KubeProxyConfiguration
    mode: "ipvs"
    ipvs:
      strictARP: true

    ```

2) Apply Manifest

    ```sh
    kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.13.10/config/manifests/metallb-native.yaml
    ```

3) Add MetalLB resources

    ```metallb-resources.yaml
    # Put these into a file named metallb-resources.yaml

    apiVersion: metallb.io/v1beta1
    kind: IPAddressPool
    metadata:
      name: master-ip-pool
      namespace: metallb-system
    spec:
      addresses:
      - 10.0.40.100-10.0.40.100

    ---
    apiVersion: metallb.io/v1beta1
    kind: L2Advertisement
    metadata:
      name: l2advertisement
      namespace: metallb-system
    spec:
      ipAddressPools:
      - master-ip-pool 
    ```

    ```sh
    kubectl apply -f metallb-resources.yaml
    ```
