<h1>🛠 Project Summary<h1>

Project Name: Terraform Infrastructure Setup for AWS EC2 with VPC, Security Groups & Automation
<br>

💡Note:<br>
This code demonstrates the candidate's ability to

Write modular, reusable, and parameterized infrastructure code

Understand AWS services like EC2, VPC, subnets, security groups

Use Terraform modules and best practices (tags, versioning, variables, and outputs)

Automate deployments with user data scripting


Author Purpose:
This Terraform project is designed to automate the provisioning of AWS infrastructure, including the creation of a Virtual Private Cloud (VPC), public subnet, security group, and an EC2 instance with dynamic volume size and NGINX installation using a user data script.

🔍 Key Features
✅ 1. Provider Configuration
Uses Terraform AWS Provider version 6.0.0.

Deploys infrastructure in the us-east-1 region (configurable via variable).

🏗️ 2. VPC & Subnet Setup (vpc.tf)
Uses Terraform AWS VPC Module to create:

One public subnet

One private subnet

NAT Gateway & VPN Gateway

All components tagged and reusable.

🔐 3. Security Group (securuty_group.tf)
Allows inbound traffic on:

Port 22 (SSH)

Port 80 (HTTP)

Port 443 (HTTPS)

Port 8080 (custom HTTP)

Allows all outbound traffic.

🖥️ 4. EC2 Instance Setup (main.tf)
Creates a single EC2 instance:

Based on Ubuntu AMI

Uses a dynamic root volume size (20GB for production, customizable for others)

User data script installs NGINX on boot

Placed in public subnet, associated with security group

📤 5. Outputs (output.tf)
Displays the public IP address of the EC2 instance after provisioning.

⚙️ 6. Variables (variable.tf)
Region, environment (dev or prod), and volume size are fully customizable via variables.

🧑‍💻 Who Is This For?
Cloud Engineers

DevOps Professionals

Anyone automating AWS infrastructure with Terraform

