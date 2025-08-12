variable "service_name" {
    description = "Name for the service"
}
variable "cluster_arn" {}
variable "task_definition" {}
variable "desired_count" {
  default = 1
}
variable "subnets" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
}

resource "aws_ecs_service" "this" {
  name            = var.service_name
  cluster         = var.cluster_arn
  task_definition = var.task_definition
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = var.security_groups
  }
}

output "service_name" {
  value = aws_ecs_service.this.name
}
