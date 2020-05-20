### NOTE: All files created by the following commands are uploaded in the repo
## q1
1. Create Dockerfile adhochttpd.dockerfile and script start.sh
2. Build image:
```
docker build -t crjain/may2020q1:v1 -f adhochttpd.dockerfile .
```
3. Run Container for x=app1:
```
docker run -d --name chinmay_test5 -p 2660:80 -e x=app1 crjain/may2020q1:v1
```
4. Run Container for x=app2:
```
docker run -d --name chinmay_test6 -p 2670:80 -e x=app2 crjain/may2020q1:v1
```
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
