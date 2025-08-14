terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



module "ecs-service" {
  source  = "app.terraform.io/fivestartechnology/ecs-service/aws"
  version = "0.0.4"
  # insert required variables here
  cluster_name         = "portal-api-cluster"
  service_name         = "service-from-module"
  task_definition_arn  = "arn:aws:ecs:us-east-1:905418149387:task-definition/test-jamesaiportal:5"
  desired_count        = 1
  container_name       = "api"
  container_port       = 3000
  assign_public_ip     = true
  security_group_ids   = ["sg-0464954c534195b9f"]
  subnet_ids           = ["subnet-015dd904ef06788f2"]
}