#!/bin/bash
# 创建文件夹
mkdir -p ca server

# 生成自签CA的私钥和自签CA的签名证书
openssl req -x509 -newkey rsa:2048 -keyout ./ca/ca.key -out ./ca/ca.crt -config openssl-sign-ca.conf -sha256 -nodes

# 生成私钥和签名请求文件
openssl req -newkey rsa:2048 -keyout ./server/server.key -out ./server/server.csr -config openssl-sign-server.conf -sha256 -nodes

# 生成签名证书
openssl x509 -req -sha256 -set_serial 0x1111 -CA ./ca/ca.crt -CAkey ./ca/ca.key -in ./server/server.csr -out ./server/server.crt -extfile subjectAltName.ext
