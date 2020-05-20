## **Pods Creation:**
for i in {1..10}; do kubectl run adhoc$i --image=alpine --command ping 8.8.8.8; done

## **Dynamic Webapp:**
