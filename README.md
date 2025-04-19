# Secure EC2 Deployment with Terraform

This project uses Terraform to provision a **security-hardened EC2 instance** on AWS, following infrastructure best practices.

## 🔐 Security Features

- **SSH access restricted** to your IP only
- EC2 instance launched in a **private subnet**
- **Encrypted root volume**
- IAM Role with **least privilege (SSM only)**
- **No public IP** assigned
- Uses the **latest Amazon Linux 2 AMI**
- Includes **CloudWatch monitoring** enabled

## 🏗️ Infrastructure Overview

- VPC (10.0.0.0/16)
- Private Subnet (10.0.1.0/24)
- Security Group allowing SSH only from your IP
- EC2 instance (`t3.micro` by default)
- IAM role attached for Systems Manager access

## 🚀 How to Deploy

### 1. Clone this repo

```bash
git clone https://github.com/frbmohammaditabar/secure-ec2-terraform.git
cd secure-ec2-terraform

2. Update Variables
Edit variables.tf to match your AWS region and IP address:

variable "aws_region" {
  default = "us-east-1"
}

variable "my_ip_cidr" {
  default = "203.0.113.10/32" # Your IP here
}

3. Initialize Terraform
terraform init

4. Preview the Plan
terraform plan

5. Apply the Configuration

terraform apply

📦 Files

File	Description
main.tf	Main Terraform config
variables.tf	Input variables
outputs.tf	Outputs like instance ID and private IP
🔧 Requirements
Terraform v1.0+

AWS CLI configured (aws configure)

AWS credentials with EC2/VPC/IAM permissions

📌 Notes
No public IP is assigned. Use SSM Session Manager to connect securely without SSH.

This setup is a good base for hardening using CIS or STIG standards later.

📜 License
MIT © 2025 Fariba Mohammaditabar

yaml
Copy
Edit

---

Would you like me to personalize this with your name, GitHub handle, or anything else?
