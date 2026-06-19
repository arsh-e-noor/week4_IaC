# F4 - Terraform + Ansible Integration

## Objective

Implement an Infrastructure as Code (IaC) workflow where Terraform provisions AWS infrastructure and Ansible configures the provisioned server.

## Tools Used

* Terraform
* Ansible
* AWS EC2
* AWS VPC
* Ubuntu Server

## Workflow

1. Terraform creates:

   * VPC
   * Public Subnet
   * Internet Gateway
   * Route Table
   * Security Group
   * EC2 Instance

2. Ansible connects to the EC2 instance using SSH.

3. Ansible installs and configures Nginx automatically.

4. Nginx becomes accessible through the EC2 public IP.

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Ansible Commands

```bash
ansible web -m ping
ansible-playbook nginx.yml
```

## Verification

Open the EC2 public IP in a browser:

```text
http://<EC2_PUBLIC_IP>
```

The Nginx welcome page confirms successful provisioning and configuration.

## Deliverable

* AWS infrastructure provisioned using Terraform
* EC2 configured using Ansible
* Nginx deployed automatically
* Complete Infrastructure as Code workflow implemented
