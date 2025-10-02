# AWS Fargate Example with Terraform

This repository contains Terraform configurations to deploy a containerized application on AWS Fargate with an Application Load Balancer (ALB). The infrastructure includes:

- **ECR Repository** for container images
- **ECS Cluster** with Fargate launch type
- **Application Load Balancer** with HTTP listener
- **Security Groups** for ALB and ECS service
- **CloudWatch Log Group** for application logs

## Architecture

```
Internet → ALB (Port 80) → ECS Service (Fargate) → ECR Repository
                ↓
            CloudWatch Logs
```

## Prerequisites

Before running this project, ensure you have:

1. **Terraform** installed (version >= 1.6.0)
2. **AWS CLI** configured with appropriate credentials
3. **Docker** installed (for building and pushing container images)
4. An existing **ecsTaskExecutionRole** IAM role in your AWS account

## Configuration

### 1. Configure Variables

Create a  `terraform.tfvars` with your specific values:

```hcl
aws_region    = "ap-northeast-1"
name_prefix   = "your-app-name"
ecr_repo_name = "your-ecr-repo"
image_tag     = "latest"

# AWS Credentials (consider using AWS CLI profiles instead)
aws_access_key = "your-access-key"
aws_secret_key = "your-secret-key"
```

## Deployment Instructions

Deploy as usual using terraform

