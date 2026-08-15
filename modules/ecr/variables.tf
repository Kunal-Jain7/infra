variable "project" {
  type = string
}

variable "env" {
  type = string
}

variable "repositories" {
  description = "List of ECR repository names to create"
  type        = list(string)
}
