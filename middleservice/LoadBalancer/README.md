## install and configure haproxy on MAC
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

see configure file example [here](https://gist.github.com/dhavaln/2fed8e1484d516e08a11a20cff795dba)

