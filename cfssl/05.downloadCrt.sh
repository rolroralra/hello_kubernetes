kubectl get csr isc0304 -o jsonpath='{.status.certificate}' \
    | base64 --decode > isc0304.crt
openssl x509 -text -in isc0304.crt
