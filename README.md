# TLS Certs Generator
TLS certificate generator (as per RabbitMQ awesome step-by-step).

This repo holds an automated version of the step-by-step provided by [RabbitMQ docs](https://www.rabbitmq.com/ssl.html#manual-certificate-generation).
It requires `openssl` and `make` to be available on PATH.

## Usage
To generate a full set of CA, client and server certs + private keys, run the following command:
```sh
make run
```
The newly generated files will be grouped under `./result`.

To reset the repo and generate another set of files, run:
```sh
make clean
```
