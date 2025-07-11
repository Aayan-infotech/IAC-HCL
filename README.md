# ✅ Terraform Infra for S3 Bucket & Secrets Manager

This repository provisions two AWS resources:

- **S3 Bucket** with a unique name
- **Secrets Manager** to store sensitive config like DB URIs, tokens, etc.

---

## 📁 Directory Structure

```
.
├── s3/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── secret-manager/
│   ├── main.tf
│   ├── secrets.json
│   └── variables.tf
│
└── .gitignore
```

---

## 🚀 Getting Started

### 🧾 Prerequisites

- [Terraform](https://www.terraform.io/downloads)
- AWS CLI configured (`aws configure`)
- IAM user with permission for:
  - `s3:*`
  - `secretsmanager:*`

---

## 🪣 Deploy S3 Bucket

1. **Go to S3 folder**
   ```bash
   cd s3
   ```

2. **Edit variables.tf if needed**
   ```hcl
   variable "bucket_name" {
     default = "news3bucket"
   }

   variable "bucket_prefix" {
     description = "Prefix for the S3 bucket name"
     type        = string
   }
   ```

3. **Run Terraform**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

---

## 🔐 Deploy Secrets Manager

1. **Go to secret-manager folder**
   ```bash
   cd ../secret-manager
   ```

2. **Edit `secrets.json` with your app secrets**
   ```json
   {
     "NODE_ENV": "production",
     "PORT": "3030",
     "DB_URI": "mongodb+srv://username:password@cluster0.example.net/dbname",
     "ACCESS_TOKEN_SECRET": "9385C662A2FA1785BCD41B164DE37"
   }
   ```

3. **Run Terraform**
   ```bash
   terraform init
   terraform plan -var="secret_name=your-secret-name"
   terraform apply -var="secret_name=your-secret-name"
   ```

---

## 📤 Outputs

- `secret_arn` – ARN of the created secret
- `bucket_name` – Name of the S3 bucket
- `bucket_arn` – ARN of the bucket

---

## 🧹 Cleanup

```bash
terraform destroy
```

---

## 📄 .gitignore

```hcl
**/.terraform/*
terraform.tfstate
terraform.tfstate.*
.terraform.lock.hcl
*.tfvars
*.tfvars.json
terraform-provider-aws*
*.tfplan
```

---

## 👨‍💻 Author

Made with ❤️ by `Kartikey Tiwari`
