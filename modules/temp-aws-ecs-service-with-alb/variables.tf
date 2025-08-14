variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "cluster_name" {
  description = "ECS cluster name (for autoscaling resource_id)"
  type        = string
}

variable "cluster_arn" {
  description = "ARN of the ECS cluster"
  type        = string
}

variable "task_definition" {
  description = "ARN of the ECS task definition"
  type        = string
}

variable "desired_count" {
  description = "Number of desired tasks"
  type        = number
  default     = 1
}

variable "subnets" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP"
  type        = string
  default     = "DISABLED"
}

# ALB integration
variable "alb_target_group_arn" {
  description = "ARN of the ALB target group to attach to"
  type        = string
  default     = null
}

variable "container_name" {
  description = "Name of the container to attach to ALB"
  type        = string
  default     = null
}

variable "container_port" {
  description = "Container port to attach to ALB"
  type        = number
  default     = null
}

# Auto scaling config
variable "enable_autoscaling" {
  description = "Whether to enable ECS autoscaling"
  type        = bool
  default     = false
}

variable "min_capacity" {
  description = "Minimum ECS tasks for autoscaling"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum ECS tasks for autoscaling"
  type        = number
  default     = 2
}

variable "scale_on_cpu" {
  description = "Enable scaling on CPU"
  type        = bool
  default     = false
}

variable "cpu_target_value" {
  description = "Target CPU utilization percentage"
  type        = number
  default     = 70
}

variable "scale_on_memory" {
  description = "Enable scaling on Memory"
  type        = bool
  default     = false
}

variable "memory_target_value" {
  description = "Target Memory utilization percentage"
  type        = number
  default     = 70
}

variable "scale_in_cooldown" {
  description = "Cooldown before scaling in"
  type        = number
  default     = 60
}

variable "scale_out_cooldown" {
  description = "Cooldown before scaling out"
  type        = number
  default     = 60
}
