## 搭建SS服务器
1. 选择centos作为image
2. 安装
```
sudo pip install shadowsocks
ssserver -h
sudo mkdir /etc/shadowsocks
sudo vi /etc/shadowsocks/config.json
{
"server": "0.0.0.0",
"server_port": 1443,
"local_address": "127.0.0.1",
"local_port": 1080,
"password": "ATG2ffPE",
"timeout": 300,
"method": "aes-256-cfb",
"fast_open": false,
"workers": 1
}

sudo ssserver -c /etc/shadowsocks/config.json -d start
```
