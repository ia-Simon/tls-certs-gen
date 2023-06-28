ca-cert-gen:
	openssl req -x509 -config openssl.cnf -newkey rsa:2048 -days 365 \
    -out ca_certificate.pem -outform PEM -subj /CN=MyTestCA/ -nodes

server-cert-gen:
	openssl ca -config openssl.cnf -in ../server/req.pem -out \
    ../server/server_certificate.pem -notext -batch -extensions server_ca_extensions

client-cert-gen:
	openssl ca -config openssl.cnf -in ../client/req.pem -out \
    ../client/client_certificate.pem -notext -batch -extensions client_ca_extensions
