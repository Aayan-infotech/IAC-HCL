variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "min_nodes" {
  description = "Minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of nodes in the node group"
  type        = number
  default     = 4
}

variable "desired_nodes" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "Instance type for the nodes"
  type        = string
  default     = "t3.small"
}