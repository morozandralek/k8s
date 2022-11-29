kubectl apply -f my-replica-set.yml
kubectl expose rs kubia-proxy --type=LoadBalancer --name kubia-http
kubectl scale rs kubia-proxy --replicas=3