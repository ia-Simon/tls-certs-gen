prvkey-gen:
	openssl genrsa -out private_key.pem 2048
	openssl req -new -key private_key.pem -out req.pem -outform PEM \
    -subj /CN=$$(hostname)/O=client/ -nodes
