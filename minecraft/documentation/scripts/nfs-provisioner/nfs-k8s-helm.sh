helm install nfs-k8s-helm-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner -n storage \
    --set nfs.server=XXX.XXX.XXX.XXX \
    --set nfs.path=/mnt/user/nfsk8s \
    --set storageClass.name=nfs-k8s-helm \
    --set storageClass.provisionerName="kosmok8s.com/nfs-k8s-helm-provisioner" \
    --set storageClass.accessModes=ReadWriteMany \
    --set nfs.volumeName=nfsk8s 