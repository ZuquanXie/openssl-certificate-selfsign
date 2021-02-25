# OpenSSL Certificate Selfsign

Use OpenSSL to create a selfsigned CA and create a selfsigned certificate for personal web server.

keywords: OpenSSL、Selfsign、Certificate、WebServer、Https、Chrome、FireFox、IOS

## Usage
### linux:

```
./createCert.sh
```
Then, certificate of CA and key can be found in the directory ca, also for server can be found in the directory server.
### windows:
You can install a gitbash, then use it like that in the linux.

## Tips
If you have installed the certificate of selfsigned CA locally, the selfsigned certificate of web server can be passed by chrome or safari in the IOS, for the Firefox, you can install certificate of selfsigned CA in the browser settings.
