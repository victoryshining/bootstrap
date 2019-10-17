## 配置完了负载均衡或者EC2上的web服务后，在浏览器里输入public dns，无法访问
可能原因
1. security group配置，没有允许inbound traffic
默认的default secruity group在source这一列里，用的是security group的名字，因为是白名单机制，这样做任何source都无法满足规则。
解决办法：修改rule，改source为anywhere。
