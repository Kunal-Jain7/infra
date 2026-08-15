variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "env" {
  description = "Environment to deploy"
  type        = string
}

variable "region" {
  description = "particular region to deploy the resources"
  type        = string
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for the public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for the private subnets"
}

variable "database_subnet_cidrs" {
  type        = list(string)
  description = "List of the CIDR blocks for the databse subnets"
}

