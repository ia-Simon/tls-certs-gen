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

clean:
	git reset --hard HEAD
	git clean -fd