kubectl run -l app=foo --image=alpine --restart=Never --rm -i -t test-1
wget -qO- --timeout=2 http://hello-web:8080

kubectl run -l app=other --image=alpine --restart=Never --rm -i -t test-1
wget -qO- --timeout=2 http://hello-web:8080
