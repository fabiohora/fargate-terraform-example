variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}

variable "aws_region" {
  type        = string
  description = "AWS region to deploy into"
}

variable "name_prefix" {
  description = "Resource name prefix"
  type        = string
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "image_tag" {
  description = "Image tag to deploy"
  type        = string
}

variable "container_port" {
  description = "Application port"
  type        = number
  default     = 12345
}

variable "health_check_path" {
  description = "ALB health check path"
  type        = string
  default     = "/health"
}

variable "task_cpu" {
  description = "Fargate CPU units"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Fargate memory (MiB)"
  type        = number
  default     = 512
}


