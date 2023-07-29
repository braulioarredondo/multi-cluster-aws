docker build -t braulioarredondo/multi-client-k8s:latest -t braulioarredondo/multi-client-k8s:$SHA -f ./client/Dockerfile ./client
docker build -t braulioarredondo/multi-server-k8s:latest -t braulioarredondo/multi-server-k8s:$SHA -f ./server/Dockerfile ./server
docker build -t braulioarredondo/multi-worker-k8s:latest -t braulioarredondo/multi-worker-k8s:$SHA -f ./worker/Dockerfile ./worker

docker push braulioarredondo/multi-client-k8s:latest
docker push braulioarredondo/multi-server-k8s:latest
docker push braulioarredondo/multi-worker-k8s:latest
docker push braulioarredondo/multi-client-k8s:$SHA
docker push braulioarredondo/multi-server-k8s:$SHA
docker push braulioarredondo/multi-worker-k8s:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=braulioarredondo/multi-client-k8s:$SHA
kubectl set image deployments/server-deployment server=braulioarredondo/multi-server-k8s:$SHA
kubectl set image deployments/worker-deployment worker=braulioarredondo/multi-worker-k8s:$SHA