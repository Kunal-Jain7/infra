variable "project" {
  description = "The project name"
  type        = string
}

variable "env" {
  type        = string
  description = "Environment name (dev, qa, prod)"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EKS nodes"
}

variable "kubernetes_version" {
  type        = string
  default     = "1.33"
  description = "Kubernetes version for the EKS cluster"
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
  description = "EC2 instance types for the EKS worker nodes"
}

variable "desired_size" {
  type        = number
  default     = 3
  description = "Desired number of worker nodes"
}

variable "min_size" {
  type        = number
  default     = 1
  description = "Minimum number of worker nodes"
}

variable "max_size" {
  type        = number
  default     = 4
  description = "Maximum number of worker nodes"
}
