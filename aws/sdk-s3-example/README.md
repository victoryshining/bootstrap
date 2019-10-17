## SDK S3 example
下载示例项目

`git clone https://github.com/awslabs/aws-java-sample.git`

配置访问密钥

在 ~/.aws/credentials (Windows 用户为 C:\Users\USER_NAME\.aws\credentials) 中创建凭证，并在将带下划线的值替换为您自己的值后保存以下行。
```
[default]
aws_access_key_id = YOUR_ACCESS_KEY_ID
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
```
编译并运行示例
从 aws-java-sample 目录中运行：

`mvn clean compile exec:java`


