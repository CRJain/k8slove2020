# K8S ASSIGNMENT
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
![Nginx Server Running](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Screenshot_1.png)
### Creating Roles -
```
kubectl create -f role-binding.yml
```
#### role-binding.yml
```
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: default-view
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: view
subjects:
  - kind: ServiceAccount
    name: default
    namespace: default
```
### Installing Dependencies in Pod -
```
kubectl exec -it nginxpod -- bash
```
```
apt-get update
apt-get install python3 -y
apt-get install python3-pip -y
apt-get install nano -y
pip3 install kubernetes
```
### Creating Python Script -
```
cd /home/
nano get-pods.py
```
#### get-pods.py
```
from kubernetes import client, config
import os

config.load_incluster_config()
v1 = client.CoreV1Api()

pods = v1.list_namespaced_pod(namespace='default')

html =  '''
        <!DOCTYPE html>
        <html>
        <head>
        <style>
        table, th, td {
          border: 1px solid black;
        }
        </style>
        <body>
                <h2>LIST OF RUNNING PODS :- </h2>
                <table style="width:30%">
                <tr>
                        <th style="text-align:left">NAME</th>
                        <th style="text-align:left">STATUS</th> 
                </tr>
        '''
for pod in pods.items:
    html += ''' <tr><td>%s</td><td>%s</td></tr>'''\
           %(pod.spec.containers[0].name, pod.status.phase)
html += '</table></body></html>'
print(html)
```
### Coping output of get-pods.py to index.html -
```
python3 get-pods.py > /usr/share/nginx/html/index.html
```
#### Screenshot 2
![List of Running Pods](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Screenshot_2.png)
