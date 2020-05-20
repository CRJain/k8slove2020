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
![Q1_1](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Q1_1.png)
4. Run Container for x=app2:
```
docker run -d --name chinmay_test6 -p 2670:80 -e x=app2 crjain/may2020q1:v1
```
![Q1_2](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Q1_2.png)
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
## q4
1. Create q4.yaml.
2. Append service to q4.yaml by running:
```
kubectl create service loadbalancer q4svcchinmay --tcp 80 --dry-run=client -o yaml >> q4.yaml
```
3. Run:
```
kubectl create -f q4.yaml
```
![Q4](https://raw.githubusercontent.com/CRJain/k8slove2020/master/Q4.png)
