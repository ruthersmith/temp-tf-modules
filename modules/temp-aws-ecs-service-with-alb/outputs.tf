output "service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.this.name
}

output "service_arn" {
  description = "The ARN of the ECS service"
  value       = aws_ecs_service.this.arn
}

output "autoscaling_target_id" {
  description = "ID of the autoscaling target"
  value       = try(aws_appautoscaling_target.ecs[0].resource_id, null)
}
