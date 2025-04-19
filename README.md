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
