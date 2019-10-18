## install and configure haproxy on MAC
- install haproxy
`brew install haproxy`
localhost:haproxy shining$ brew install haproxy
==> Installing dependencies for haproxy: pcre
==> Installing haproxy dependency: pcre
==> Downloading https://homebrew.bintray.com/bottles/pcre-8.43.mojave.bottle.tar.gz
==> Installing haproxy
==> Downloading https://homebrew.bintray.com/bottles/haproxy-2.0.7.mojave.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/7c/7cbb2a35dfcc612a1c1ee5b0236a5427c87c4d76cb340f84e43c240a4d57c5e7?__gda__=exp=1571388093~hmac=b813d3f3c5484f4b9f99242ee3853e81192b83c513942a65c4fd8c793746b764&response-content
######################################################################## 100.0%
==> Pouring haproxy-2.0.7.mojave.bottle.tar.gz
==> Caveats
To have launchd start haproxy now and restart at login:
  brew services start haproxy
Or, if you don't want/need a background service you can just run:
  haproxy -f /usr/local/etc/haproxy.cfg
==> Summary
🍺  /usr/local/Cellar/haproxy/2.0.7: 8 files, 2.2MB
==> Caveats
==> haproxy
To have launchd start haproxy now and restart at login:
  brew services start haproxy
Or, if you don't want/need a background service you can just run:
  haproxy -f /usr/local/etc/haproxy.cfg
  
- configure haproxy
see configure file example [here](https://gist.github.com/dhavaln/2fed8e1484d516e08a11a20cff795dba)

