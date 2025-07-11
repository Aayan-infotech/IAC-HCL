# 🚀 AWS Terraform Modules – S3 & Secrets Manager

This repository provides production-ready **Terraform modules** to manage:

- 🪣 **Amazon S3 Bucket** (with optional lifecycle configuration)
- 🔐 **AWS Secrets Manager** (secure storage for secrets/credentials)

These modules are ideal for developers and DevOps teams who want to automate AWS resource provisioning using **Infrastructure as Code (IaC)** with Terraform.

---

## 🌐 Prerequisites

Before you begin, ensure the following are installed and configured:

- ✅ [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.3 or later  
- ✅ [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)  
- ✅ An AWS IAM user with necessary permissions  
- ✅ AWS credentials configured via:

```bash
aws configure
```

---

## 📁 Repository Structure

```
IAC-HCL/
├── s3/                 # Terraform module for S3 bucket
├── secret-manager/     # Terraform module for AWS Secrets Manager
└── .gitignore
```

---

## 🔁 Common Terraform Commands

Run the following commands **inside any module folder** (`s3/` or `secret-manager/`):

```bash
terraform init         # Initialize working directory
terraform validate     # Check if configuration is valid
terraform plan         # Preview the resources to be created
terraform apply        # Apply changes and create resources
terraform destroy      # Tear down created resources
```

---

## 📦 Module 1: S3 Bucket

📂 Path: `s3/`  
Creates an Amazon S3 bucket with optional lifecycle rules (e.g., auto-delete, archive).

### 🔧 Variables

| Variable      | Description                         | Type   | Required |
|---------------|-------------------------------------|--------|----------|
| `bucket_name` | Unique name for the S3 bucket       | string | ✅ Yes    |

### ✅ Example Usage

```bash
cd s3
terraform init
terraform apply -var="bucket_name=my-dev-bucket"
```

Once deployed, you can upload files and manage lifecycle settings directly in AWS Console.

---

## 📦 Module 2: AWS Secrets Manager

📂 Path: `secret-manager/`  
Creates a secure secret in **AWS Secrets Manager**, useful for storing passwords, tokens, DB credentials, and more.

### 🔧 Variables

| Variable        | Description                  | Type   | Required |
|------------------|------------------------------|--------|----------|
| `secret_name`    | Name of the secret           | string | ✅ Yes    |
| `secret_value`   | Value to store securely      | string | ✅ Yes    |

### ✅ Example Usage

```bash
cd secret-manager
terraform init
terraform apply -var="secret_name=db_password" -var="secret_value=SuperSecure123"
```

You can retrieve the secret via SDK, CLI, or Lambda securely without hardcoding values.

---

## 📌 Notes

- Each module is **self-contained** — use only what you need.
- Follows best practices for naming, structure, and reusability.
- You can destroy resources at any time using `terraform destroy`.

---

## 🙋‍♂️ Need Help?

If you face any issues or want to customize these modules, feel free to open a GitHub issue or contact the maintainer.

---

## ⭐ Like this?

If this saved your time or helped you learn something new, please consider giving the repo a ⭐ and sharing it with your team!

---

## 🛡️ Disclaimer

> Use at your own risk. Designed for educational and automation purposes. Review code before using in production.
