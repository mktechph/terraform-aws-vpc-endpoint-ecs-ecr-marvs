variable "vpc_id" {
  description = "The VPC ID where the Endpoint will be deployed."
  type        = string
}

variable "endpoint_tags" {
  description = "Tags for the Endpoint."
  type        = map(string)
}


variable "ecs_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the ECS Endpoint will be deployed."
  type        = list(string)
  default     = null
}

variable "ecs_agent_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the ECS-Agent Endpoint will be deployed."
  type        = list(string)
  default     = null
}

variable "ecs_telemetry_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the ECS-Telemetry Endpoint will be deployed."
  type        = list(string)
  default     = null
}


variable "ecr_api_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the ECR-API Endpoint will be deployed."
  type        = list(string)
  default     = null
}

variable "ecr_dkr_endpoint_subnet_id" {
  description = "The Subnet ID(s) where the ECR-DKR Endpoint will be deployed."
  type        = list(string)
  default     = null
}