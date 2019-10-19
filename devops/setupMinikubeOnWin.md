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
 minikube start --vm-driver hyperv --hyperv-virtual-switch "Primary Virtual Switch" --docker-env=HTTP_PROXY=www-proxy-sin.sg.oracle.com:80 --docker-env=HTTPS_PROXY=www-proxy-sin.sg.oracle.com:80
 ```




