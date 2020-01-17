cat <<EOF | ./cfssl genkey - | ./cfssljson -bare isc0304
{
  "CN": "isc0304",
  "key": {
    "algo": "ecdsa",
    "size": 256
  }
}
EOF
