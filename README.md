# Terraform EC2 Nginx Multi-Region Setup

This project demonstrates how to use **Terraform** to create two **EC2 instances** in two different **AWS regions** (`ap-south-1` and `us-east-1`), and install **Nginx** on them.

## Prerequisites

- **Terraform**: Ensure Terraform is installed. You can download it from [Terraform's official website](https://www.terraform.io/downloads).
- **AWS CLI**: Ensure you have AWS CLI configured with the proper IAM credentials.
- **AWS Account**: You need an AWS account to launch EC2 instances.

## Overview

This repository contains the following components:
- **Terraform Configuration Files**:
  - `main.tf`: Defines the EC2 instances and Nginx installation using a shell script.
  - `variables.tf`: Contains variables for the AMI IDs and AWS regions.
  - `provider.tf`: Configures the AWS providers for two different regions.
  - `outputs.tf`: Outputs the public IP addresses of the created EC2 instances.

## Steps to Deploy

1. **Clone the repository**:
   Clone this repository to your local machine.
   ```bash
   git clone https://github.com/Mohan006007/terraform-ec2-nginx-multi-region.git
   cd terraform-ec2-nginx-multi-region
2. **Set up AWS credentials: Ensure your AWS CLI is configured with the appropriate access keys. You can set up AWS CLI using the following command**:
   ```bash
   aws configure
3. **Initialize Terraform: Run the following command to initialize Terraform and download the necessary providers**:
   ```bash
   terraform init
4. **Validate the configuration: Ensure the Terraform configuration is correct by validating it**:
   ```bash
   terraform validate
5. **Apply the configuration: Run the following command to create the EC2 instances**:
   ```bash
   terraform apply
6. Access the EC2 instances: After the instances are created, Terraform will output the public IP addresses of the two EC2 instances. You can access them via a browser by navigating to these IP addresses. Nginx should be running on both instances.
7. **Output**:
   After successfully running the Terraform apply command, the public IPs of the EC2 instances in both regions will be displayed:
   ```bash
   ap_south_instance_public_ip = <Public IP of ap-south-1 instance>
   us_east_instance_public_ip = <Public IP of us-east-1 instance>
8. **Clean up**:
   To clean up the created resources, you can run:
   ```bash
   terraform destroy
   ```
   This will delete the EC2 instances and all associated resources.
