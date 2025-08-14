output "service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.this.name
}

output "service_arn" {
  description = "The ARN of the ECS service"
  value       = aws_ecs_service.this.arn
}
