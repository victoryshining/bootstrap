1. aws s3api create-bucket --bucket cluster.k8s.local.sheng-state-store --region us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
{
    "Location": "http://cluster.k8s.local.sheng-state-store.s3.amazonaws.com/"
}

2. export  KOPS_STATE_STORE=s3://basit-k8s-demo-bucket-sheng (windows需要加到环境变量）
3. powershell run ssh-keygen
4. kops create cluster \
     --name=cluster.k8s.local.sheng \
     --image=ami-00bf61217e296b409 \
     --zones=us-east-2a \
     --master-count=1 \
     --master-size="t2.micro" \
     --node-count=1 \
     --node-size="t2.micro"  \
     --vpc=vpc-05c521430e0738072 \
     --subnets=subnet-0edb2fc1ed8e27819 \
     --networking=calico \
     --ssh-public-key="~/.ssh/id_rsa.pub"

kops create cluster --name=cluster.k8s.local.sheng --image=ami-024c80694b5b3e51a --zones=us-west-1a --master-count=1 --master-size="t2.micro" --node-count=1 --node-size="t2.micro"  --vpc=vpc-05c521430e0738072 --subnets=subnet-0edb2fc1ed8e27819 --networking=calico --ssh-public-key="~/.ssh/id_rsa.pub"

4. Kops validate cluster

