# Example usage in Terraform

module "ecs_service" {
  source  = "app.terraform.io/<ORG>/ecs-service/aws"
  version = "0.1.0"

  service_name     = "api-service"
  cluster_name     = aws_ecs_cluster.main.name
  cluster_arn      = aws_ecs_cluster.main.arn
  task_definition  = aws_ecs_task_definition.api.arn
  subnets          = ["subnet-123", "subnet-456"]
  security_groups  = ["sg-123"]

  alb_target_group_arn = aws_lb_target_group.api.arn
  container_name       = "api-container"
  container_port       = 8080

  enable_autoscaling   = true
  min_capacity         = 1
  max_capacity         = 4
  scale_on_cpu         = true
  cpu_target_value     = 75
}
