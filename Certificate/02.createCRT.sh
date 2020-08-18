sudo openssl x509 -req -in gasbugs.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out gasbugs.crt -days 500
