variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_identifier" {
  description = "Identifier for the DocumentDB cluster"
  default     = "tofood-documentdb-cluster"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "leonardo10sp" 
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
  default     = "atmgdtdt66" 
}

variable "vpc_id" {
  description = "VPC ID where DocumentDB will be deployed"
}

variable "subnet_ids" {
  description = "List of subnet IDs where DocumentDB will be deployed"
  type        = list(string)
}
