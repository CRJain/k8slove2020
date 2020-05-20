## Pods Creation:
```
for i in {1..10}; do kubectl run adhoc$i --image=alpine --command ping 8.8.8.8; done
```

## Dynamic Webapp:
```
kubectl run nginxpod --image=nginx --port 80
kubectl expose pods nginxpod --type NodePort --port 80
```
#### Screenshot 1
![Screenshot 1](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Screenshot_1.png)
