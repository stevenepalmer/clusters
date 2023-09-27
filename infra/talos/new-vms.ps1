Set-ExecutionPolicy Unrestricted

Import-Module C:\Users\lk\Documents\WindowsPowerShell\Modules\New-TalosVM\Talos.psm1


## Worker Nodes
New-TalosVM -VMNamePrefix k8s-talos-worker -CPUCount 4 -StartupMemory 2GB -SwitchName vsDockerNet -TalosISOPath 'D:\OS Images\Linux Iso\metal-amd64.iso' -NumberOfVMs 2 -VMDestinationBasePath 'E:\HypeV\LinuxClients' -StorageVHDSize 20GB

## Control Plane Nodes

New-TalosVM -VMNamePrefix k8s-talos-controlplane -CPUCount 4 -StartupMemory 4GB -SwitchName vsDockerNet -TalosISOPath 'D:\OS Images\Linux Iso\metal-amd64.iso' -NumberOfVMs 1 -VMDestinationBasePath 'E:\HypeV\LinuxClients' -StorageVHDSize 30GB