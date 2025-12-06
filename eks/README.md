# EKS-Terraform

## Execute below commands
```bash

aws eks update-kubeconfig --name tiru-cluster --region us-east-1
kubectl get nodes
```

```bash
docker run -d --name netflix2 -p 8082:3000 tirucloud/netflix:latest
docker exec -it netflix2 sh
apk add --no-cache curl
apk add --no-cache net-tools
netstat -tunlp

kubectl apply -f k8s/dep.yml
kubectl apply -f k8s/svc.yml
kubectl get svc
```
- Update kubeconfig for kubectl access to the EKS cluster (cluster not found, likely already deleted)
- Delete Kubernetes resources (deployment and service) to remove LoadBalancer dependencies (failed due to cluster deletion)
- Run terraform destroy to delete AWS resources (completed after removing lingering security group)
