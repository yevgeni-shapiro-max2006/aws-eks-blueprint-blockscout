<img width="2048" height="1024" alt="image" src="https://github.com/user-attachments/assets/c77a6669-1684-463a-8aec-1bfb1e3cd620" />



## AWS | EKS Blockscout
Blockscout is an open-source blockchain explorer for inspecting EVM chains, with support for 1000+ L1s, L2s, L3s, optimistic rollups, and ZK rollups.



🎯 Architecture Overview
```
✅ VPC containing , Public+Private Subnets , NAT Gateway
✅ EKS Cluster Provisioner Workflow 
✅ Minio S3 Object Storage 
✅ Velero Disaster Recovery
✅ Velero UI Interface
✅ Local Exec ( Logical Workloads )
```


🧱 Features
```
✔ Fully automated provisioning with Terraform
✔ High availability using multiple subnets in different Availability Zones
✔ Secure connectivity between Application and RDS
✔ Configurable environment variables for database credentials
✔ Easy to extend for other JSON data source
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

