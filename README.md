# Terraform AWS Infrastructure Project

A Infrastructure as Code (IaC) project that provisions a complete AWS environment using Terraform. Built as part of a hands-on learning path toward the AWS Solutions Architect certification.

## What gets provisioned

- **VPC** — isolated private network (10.0.0.0/16)
- **Public Subnet** — subdivision of the VPC (10.0.1.0/24)
- **Internet Gateway** — connects the VPC to the internet
- **Route Table** — directs internet-bound traffic through the gateway
- **Security Group** — firewall allowing SSH from a specific IP only
- **EC2 Instance** — Ubuntu 24.04 t3.micro server
- **S3 Bucket** — private storage with versioning and public access blocked

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) v1.0+
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) v2
- AWS account with IAM user credentials configured

## Setup

1. Clone the repository
```bash
   git clone https://github.com/YOUR_USERNAME/terraform-aws-project
   cd terraform-aws-project
```

2. Configure AWS credentials
```bash
   aws configure
```

3. Update the SSH ingress rule in `main.tf` with your IP address
```hcl
   cidr_blocks = ["YOUR_IP/32"]
```

4. Initialise Terraform
```bash
   terraform init
```

## Usage

Preview changes before applying:
```bash
terraform plan
```

Deploy the infrastructure:
```bash
terraform apply
```

Destroy all resources when done:
```bash
terraform destroy
```

## Project structure
```bash
terraform-aws-project/  
├── provider.tf      # AWS provider and Terraform settings  
├── variables.tf     # Input variables (region, CIDR blocks, instance type)  
├── main.tf          # All resource definitions  
└── outputs.tf       # Outputs displayed after apply (EC2 IP, bucket name, VPC ID)  
```






