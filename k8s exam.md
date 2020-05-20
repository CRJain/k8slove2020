### NOTE: All files created by the following commands are uploaded in the repo
## q2
1. Create q2.yaml by running:
```
kubectl run adhocpod1 --image=nginx --port 80 --dry-run=client -o yaml > q2.yaml
kubectl create service nodeport q2svcchinmay --tcp 80 --dry-run=client -o yaml >> q2.yaml
```
2. Create pod and service by running:
```
kubectl create -f q2.yaml
```
Screenshot:
![q2](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Q2.png)
