## This computer doesn't have VT-X/AMD-v enabled. Enabling it in the BIOS is mandatory
*solution*: 
bios中的Intel Virtualization Technology设置成了disable的，重启电脑进入bios，将其设置成abled即可。
选择Security选项卡，选择其下的virtualization，进入后将Intel (R) virtualization Technology项置为Enable，按F10保存退出

## Error starting host: Error getting state for host: machine does not exist
*solution*:
原因1：必须是在C盘下运行minikube命令，将命令行切换到C盘再运行。如果还不行，删除/users/{your name}/.minikube目录再重新来一次

## minikube start failed

Unfortunately, an error has occurred:        timed out waiting for the condition

This error is likely caused by:
        - The kubelet is not running
        - The kubelet is unhealthy due to a misconfiguration of the node in some way (required cgroups disabled)
        - Either there is no internet connection, or imagePullPolicy is set to "Never",
          so the kubelet cannot pull or find the following control plane images:
                - k8s.gcr.io/kube-apiserver-amd64:v1.10.0
                - k8s.gcr.io/kube-controller-manager-amd64:v1.10.0
                - k8s.gcr.io/kube-scheduler-amd64:v1.10.0
                - k8s.gcr.io/etcd-amd64:3.1.12 (only if no external etcd endpoints are configured)

If you are on a systemd-powered system, you can try to troubleshoot the error with the following commands:
        - 'systemctl status kubelet'
        - 'journalctl -xeu kubelet'
                                         : running command: sudo /usr/bin/kubeadm init --config /var/lib/kubeadm.yaml --ignore-preflight-errors=DirAvailable--etc-kubernetes-manifests --ignore-preflight-errors=DirAvailable--data --ignore-preflight-errors=FileAvailable--etc-kubernetes-manifests-kube-scheduler.yaml --ignore-preflight-errors=FileAvailable--etc-kubernetes-manifests-kube-apiserver.yaml --ignore-preflight-errors=FileAvailable--etc-kubernetes-manifests-kube-controller-manager.yaml --ignore-preflight-errors=FileAvailable--etc-kubernetes-manifests-etcd.yaml --ignore-preflight-errors=Swap --ignore-preflight-errors=CRI
.: Process exited with status 1
================================================================================
An error has occurred. Would you like to opt in to sending anonymized crash
information to minikube to help prevent future errors?
To opt out of these messages, run the command:
        minikube config set WantReportErrorPrompt false
================================================================================

## Error restarting cluster:  restarting kube-proxy: waiting for kube-proxy to be up for configmap update: timed out waiting for the condition
