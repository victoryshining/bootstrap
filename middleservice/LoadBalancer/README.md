## Install and configure haproxy on MAC
- install haproxy

`brew install haproxy`

localhost:haproxy shining$ brew install haproxy
==> Installing dependencies for haproxy: pcre
............
To have launchd start haproxy now and restart at login:
  `brew services start haproxy`
  
Or, if you don't want/need a background service you can just run:
  
  `haproxy -f /usr/local/etc/haproxy.cfg`
  
==> Summary
  /usr/local/Cellar/haproxy/2.0.7: 8 files, 2.2MB
  
- configure haproxy

 go to install directory /usr/local/Cellar/haproxy/2.0.7
 
 `touch haproxy.cfg`
 
 configure as below:
 
 ```
 global
    log 127.0.0.1 local1
    maxconn 65000             #最大连接数
#    chroot /usr/local/haproxy #安装目录
#    uid haproxy                  #用户haproxy
#    gid haproxy                  #组haproxy
    daemon                    #守护进程运行
    nbproc 1                  #进程数量
#    pidfile /usr/local/haproxy/logs/haproxy.pid #haproxy pid

defaults
   log     global
   mode    http               #7层#默认的模式mode {tcp|http|health},tcp是4层,http是7层,health只会返回OK
   option  httplog            #http 日志格式
   option  httpclose          #主动关闭http通道,HA-Proxy不支持keep-alive模式
   option  redispatch         #serverId对应的服务器挂掉后,强制定向到其他健康的服务器
   option  forwardfor except 127.0.0.1/8 #后端服务器需要获得客户端的真实IP,将从Http Header中获得客户端IP
   option  dontlognull    #来防止记录 Alteo(4层负载均衡)发出的健康检测,如果一个 session 交互没有
                                     #数据,这个 session就不会被记录
   retries  3
   maxconn 50000              #最大连接数
   timeout http-request 10s
   timeout queue  1m
   timeout connect 10s
   timeout client  1m
   timeout server  1m
   timeout http-keep-alive 10s
   timeout check 10s

   #errorfile 502 /usr/local/haproxy/html/maintain.html
   #errorfile 503 /usr/local/haproxy/html/maintain.html
   #errorfile 504 /usr/local/haproxy/html/maintain.html

   frontend main
        bind *:80             #监听地址
        acl url_static       path_beg       -i /static /images /javascript /stylesheets
        acl url_static       path_end       -i .jpg .gif .png .css .js
        use_backend static     if url_static
        default_backend   my_webserver     #定义一个名为my_app前端部分。此处将对于的请求转发给后端
        backend static  #使用了静态动态分离（如果url_path匹配 .jpg .gif .png .css .js静态文件则访问此后端）
        balance roundrobin     #负载均衡算法（#banlance roundrobin 轮询）
        server   static 127.0.0.1:80 check  #静态文件部署在本机（也可以部署在其他机器或者squid缓存服务器

backend my_webserver
        mode http
        option  forwardfor
        balance roundrobin
        cookie  SERVERID
        option  httpchk HEAD /index.html
        server  web01 192.168.131.42:80 cookie web01 check inter 2000 rise 3 fall 3 weight 3
        server  web02 192.168.131.46:80 cookie web02 check inter 2000 rise 3 fall 3 weight 
 ```

see more configure file example 
[here](https://gist.github.com/dhavaln/2fed8e1484d516e08a11a20cff795dba)
[here](https://github.com/haproxy/haproxy/tree/master/examples)

