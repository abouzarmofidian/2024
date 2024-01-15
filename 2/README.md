Control Plane:

Master node: coredns deployment has image: 'registry.k8s.io/coredns/coredns:v1.8.6'

Fix kube-apiserver. Make sure its running and healthy.

kubeconfig = /root/.kube/config, User = 'kubernetes-admin' Cluster: Server Port = '6443'
###############################################
Worker Node

node01 is ready and can schedule pods?
##############################################
Task PV:

Create new PersistentVolume = 'data-pv'

PersistentVolume = data-pv, accessModes = 'ReadWriteMany'

PersistentVolume = data-pv, hostPath = '/web'

PersistentVolume = data-pv, storage = '1Gi'
################################################
Task PVC:

Create new PersistentVolumeClaim = 'data-pvc'

PersistentVolume = 'data-pvc', accessModes = 'ReadWriteMany'

PersistentVolume = 'data-pvc', storage request = '1Gi'

PersistentVolume = 'data-pvc', volumeName = 'data-pv'
#################################################
Task Pod:

Create a pod for file server, name: 'gop-file-server'

pod: gop-file-server image: 'kodekloud/fileserver'

pod: gop-file-server mountPath: '/web'

pod: gop-file-server volumeMount name: 'data-store'

pod: gop-file-server persistent volume name: data-store

pod: gop-file-server persistent volume claim used: 'data-pvc'

###############################################
Task Service:

New Service, name: 'gop-fs-service'

Service name: gop-fs-service, port: '8080'

Service name: gop-fs-service, targetPort: '8080'

Service name: gop-fs-service, NodePort: '31200'
