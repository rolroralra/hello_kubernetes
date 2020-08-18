kubectl config set-credentials isc0304 --client-certificate=isc0304.crt --client-key=isc0304-key.pem
kubectl config set-context isc0304@kubernetes --cluster=kubernetes --namespace=my-namespace --user=isc0304
kubectl --context=isc0304@kubernetes get pods
