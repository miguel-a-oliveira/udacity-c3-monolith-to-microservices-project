kubectl delete deploy api-user
kubectl delete deploy api-feed
kubectl delete deploy frontend
kubectl delete deploy reverseproxy

kubectl apply -f configurations/aws-secret.yaml
kubectl apply -f configurations/env-secret.yaml
kubectl apply -f configurations/env-configmap.yaml

kubectl apply -f configurations/api-feed-deployment.yaml
kubectl apply -f configurations/api-user-deployment.yaml
kubectl apply -f configurations/frontend-deployment.yaml
kubectl apply -f configurations/reverseproxy-deployment.yaml