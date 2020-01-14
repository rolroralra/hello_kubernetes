SVC=$(kubectl get secrets -n kube-system | grep dashboard-token | awk -F" " '{ print $1 }')
echo $SVC

kubectl describe secret -n kube-system $SVC | grep -i ^token


