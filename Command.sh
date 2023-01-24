kubectl apply -f my-replica-set.yml
kubectl expose rs kubia-proxy --type=LoadBalancer --name kubia-http
kubectl scale rs kubia-proxy --replicas=3
kubectl port-forward kubia-manual-v2 8888:8080
kubectl expose pod kubia-manual-v2 --type=LoadBalancer --name kubia-manual-service
