## install docker
follow the link https://docs.docker.com/docker-for-windows/install/

## install minikube
follow the instructions https://medium.com/@JockDaRock/minikube-on-windows-10-with-hyper-v-6ef0f4dc158c
https://chocolatey.org/docs/installation
install with command
```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install minikube
choco install kubernetes-cli
```

Create Virtual Switch "Primary Virtual Switch"

`minikube start --vm-driver hyperv --hyperv-virtual-switch "Primary Virtual Switch" `

 Failed to cache ISO: https://storage.googleapis.com/minikube/iso/minikube-v1.4.0.iso: invalid checksum: Error downloading checksum file:
 
 ```
 minikube start --vm-driver hyperv --hyperv-virtual-switch "Primary Virtual Switch" --docker-env=HTTP_PROXY=http://www-proxy-sin.sg.oracle.com:80 --docker-env=HTTPS_PROXY=https://www-proxy-sin.sg.oracle.com:80
 ```
  failed: fetching image: Get https://k8s.gcr.io/v2/
  
  see clarification [here](https://github.com/kubernetes/minikube/issues/3860)

on powershell command set below
```
Set http_proxy=www-proxy-sin.sg.oracle.com:80
Set https_proxy=www-proxy-sin.sg.oracle.com:80
set NO_PROXY=localhost,127.0.0.1
```

solution1:
```
In china, because of the GFW, you can't pull images from k8s.gcr.io without a VPN. But you can pull the needed images from registry.cn-hangzhou.aliyuncs.com/google_containers and tag them. If the needed images exist on the local system, the starting process will go on even with pulling error. I wrote a shell script that can help you install minikube on Linux OS easily. And you can also make a offline installation package by using the script. The project home is https://github.com/Kingonion/minikube-on-linux
```
add one option to 
minikube start --vm-driver hyperv --hyperv-virtual-switch "Primary Virtual Switch"--image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers






