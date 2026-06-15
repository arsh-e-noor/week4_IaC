# 🚀 M4 - Terraform Fundamentals

## 📌 Objective

The goal of this task was to learn Terraform fundamentals, configure AWS as a cloud provider, initialize Terraform, and understand state management.

---

## 🛠 Technologies Used

- Terraform
- AWS
- Linux (Ubuntu)

---

## 📂 Project Structure

```text
M4-Terraform-Fundamentals/
├── main.tf
├── provider.tf
├── versions.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── .terraform/
├── .terraform.lock.hcl
├── README.md
└── screenshots/
```

---

## 📄 Terraform Configuration

### AWS Provider

Configured AWS as the cloud provider.

```hcl
provider "aws" {
  region = "us-east-1"
}
```

### Terraform Block

Defined required Terraform version and AWS provider version.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.0"
}
```

---

## ⚙️ Commands Executed

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Generate Execution Plan

```bash
terraform plan
```

### Format Terraform Files

```bash
terraform fmt
```

---

## 📊 Learning Outcomes

During this task, I learned:

- Terraform architecture
- Infrastructure as Code (IaC) concepts
- AWS provider configuration
- Terraform initialization process
- State file management
- Terraform validation and planning workflow
- Best practices for Terraform project structure

---

## 📸 Screenshots

The following screenshots are included:

1. Terraform Version
2. Terraform Init Successful
3. Terraform Validate Successful
4. Terraform Plan Output

Screenshots are available inside the `screenshots/` directory.

---

## ✅ Task Status

Completed successfully.

Terraform was installed, configured with AWS provider, initialized successfully, and state management concepts were explored.