kubectl delete -k ./
kubectl delete -f ./pv/
kubectl delete -f ./redis/
sleep 1
kubectl create -f ./pv/
kubectl create -k ./
kubectl create -f ./redis/
