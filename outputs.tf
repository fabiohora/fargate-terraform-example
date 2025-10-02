# Core endpoints / names
output "alb_dns_name" {
  description = "Public DNS name to reach the app on port 80"
  value       = aws_lb.this.dns_name
}

output "ecr_repository_url" {
  description = "ECR repository URL (use this to docker push)"
  value       = aws_ecr_repository.app.repository_url
}

output "cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.this.name
}

output "service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.app.name
}

# Task definition visibility
output "task_definition_arn" {
  description = "ARN of the current task definition revision"
  value       = aws_ecs_task_definition.app.arn
}

output "task_container_definitions" {
  description = "Rendered container definitions JSON"
  value       = aws_ecs_task_definition.app.container_definitions
}

output "task_definition_full" {
  description = "Full task definition attributes as JSON"
  value = jsonencode({
    family                = aws_ecs_task_definition.app.family
    task_role_arn         = aws_ecs_task_definition.app.task_role_arn
    execution_role_arn    = aws_ecs_task_definition.app.execution_role_arn
    network_mode          = aws_ecs_task_definition.app.network_mode
    cpu                   = aws_ecs_task_definition.app.cpu
    memory                = aws_ecs_task_definition.app.memory
    container_definitions = aws_ecs_task_definition.app.container_definitions
  })
}
