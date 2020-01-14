while true 
do 
  kubectl exec myapp-pod  -- wget -q -O- nodejs; 
  sleep 1; 
done;
