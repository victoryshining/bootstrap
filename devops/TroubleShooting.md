## This computer doesn't have VT-X/AMD-v enabled. Enabling it in the BIOS is mandatory
*solution*: 
bios中的Intel Virtualization Technology设置成了disable的，重启电脑进入bios，将其设置成abled即可。
选择Security选项卡，选择其下的virtualization，进入后将Intel (R) virtualization Technology项置为Enable，按F10保存退出

## Error starting host: Error getting state for host: machine does not exist
*solution*:
原因1：必须是在C盘下运行minikube命令，将命令行切换到C盘再运行。如果还不行，删除/users/{your name}/.minikube目录再重新来一次
