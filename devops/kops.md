1. aws s3api create-bucket --bucket basit-k8s-demo-bucket --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
{
    "Location": "http://basit-k8s-demo-bucket-sheng.s3.amazonaws.com/"
}

2. export KOPS_STORE=s3://basit-k8s-demo-bucket-sheng (windows需要加到环境变量）
3. kops create cluster basit-k8s-demo.k8s.local –-zone us-west-1a
4. Kops validate cluster

