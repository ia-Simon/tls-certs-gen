init:
	mkdir testca/certs testca/private
	chmod 700 testca/private
	echo 01 > testca/serial
	touch testca/index.txt

	echo "GENERATED AUTOMATICALLY; DO NOT EDIT OR DELETE" > init

run: init
	cd testca && make ca-cert-gen
	cd server && make prvkey-gen
	cd testca && make server-cert-gen
	cd client && make prvkey-gen
	cd testca && make client-cert-gen

	mkdir result
	cp testca/ca_certificate.pem result/ca_cert.pem
	cp server/server_certificate.pem result/server_cert.pem
	cp server/private_key.pem result/server_key.pem
	cp client/client_certificate.pem result/client_cert.pem
	cp client/private_key.pem result/client_key.pem

	echo "GENERATED AUTOMATICALLY; DO NOT EDIT OR DELETE" > run

clean:
	git clean -fd