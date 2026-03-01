---
name: infra-as-code
description: |
  Generates Terraform/Pulumi infrastructure code for AWS/GCP/Azure.
  Provides startup-optimized templates for VPC, databases, compute,
  CDN, and common cloud architecture patterns.
metadata:
  version: 1.0.0
  category: development
  domain: infrastructure
triggers:
  - "infrastructure"
  - "terraform"
  - "IaC"
  - "cloud setup"
  - "AWS setup"
---

# Infra as Code - Cloud Infrastructure Generator

## Overview

Generates reproducible, version-controlled cloud infrastructure. "ClickOps is technical debt."

---

## 1. When to Apply

| Trigger | Behavior |
|---------|----------|
| New cloud environment setup | Full infrastructure template |
| "terraform", "IaC" | Provider-specific IaC generation |
| Scaling beyond PaaS (Vercel/Railway) | Migration-ready templates |

---

## 2. Startup Infrastructure Patterns

### Pattern A: Minimal (Pre-PMF)
```
VPC → Public Subnet → ECS Fargate (single service)
                    → RDS PostgreSQL (single instance)
                    → S3 (static assets)
Cost: ~$50-150/month
```

### Pattern B: Standard (Post-PMF)
```
VPC → Public Subnet  → ALB → ECS Fargate (auto-scaling)
    → Private Subnet → RDS PostgreSQL (multi-AZ)
                     → ElastiCache Redis
                     → S3 + CloudFront (CDN)
Cost: ~$300-800/month
```

### Pattern C: Scale (Series A+)
```
VPC → Public  → ALB → ECS/EKS (multi-service)
    → Private → RDS (read replicas)
              → ElastiCache (cluster)
              → OpenSearch
              → SQS/SNS (async)
    → Isolated → Bastion host
Cost: ~$1,000-5,000/month
```

---

## 3. Terraform Templates

### AWS Minimal Setup
```hcl
# main.tf
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
  backend "s3" {
    bucket = "myapp-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "ap-northeast-2"
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"
  name    = "${var.app_name}-vpc"
  cidr    = "10.0.0.0/16"
  azs             = ["${var.region}a", "${var.region}b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true  # Cost saving for startups
}
```

### Environment Variables
```hcl
# variables.tf
variable "app_name"    { default = "myapp" }
variable "region"      { default = "ap-northeast-2" }
variable "environment" { default = "production" }
variable "db_password" { sensitive = true }
```

---

## 4. Provider Selection Guide

| Provider | Best For | Startup Tier |
|----------|----------|-------------|
| **AWS** | Full control, most services | Free tier generous |
| **GCP** | ML/AI workloads, BigQuery | $300 credits |
| **Azure** | Enterprise/.NET | $200 credits |
| **Vercel** | Frontend, skip IaC entirely | Free tier |
| **Railway** | Backend, skip IaC entirely | $5/month |

---

## 5. Checklist Before Production

```markdown
- [ ] State file stored remotely (S3/GCS, not local)
- [ ] State file encrypted at rest
- [ ] Secrets in AWS Secrets Manager / SSM, not in .tf files
- [ ] Multi-AZ for database (if budget allows)
- [ ] Backups enabled for database
- [ ] CloudWatch/monitoring alarms set
- [ ] SSL/TLS certificates configured
- [ ] Security groups follow least privilege
- [ ] Tags applied for cost tracking
```

---

## 6. Tool Coordination

| Tool | Purpose |
|------|---------|
| **Write** | Generate Terraform/Pulumi files |
| **Read** | Analyze existing infrastructure code |
| **Bash** | Run `terraform plan`, `terraform validate` |
| **Glob** | Find existing .tf files |

---

## 7. Boundaries

**Will:**
- Generate Terraform/Pulumi templates for common patterns
- Provide cost estimates per pattern
- Include security best practices
- Support AWS, GCP, Azure

**Will Not:**
- Run `terraform apply` (destructive, requires your approval)
- Manage DNS or domain registration
- Set up billing alerts (provider-specific console)
- Replace professional cloud architecture review for scale
