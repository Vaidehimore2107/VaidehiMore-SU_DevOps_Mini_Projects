variable "aws_region" {
  description = "AWS region for lab resources"
  type        = string
  default     = "ap-south-1"
}
variable "project_name" {
  description = "Resource name prefix"
  type        = string
  default     = "vaidehi-unit4-devops"
}
variable "ssh_allowed_cidr" {
  description = "Your public IP CIDR, e.g. 203.0.113.10/32. Do not use 0.0.0.0/0."
  type        = string
  validation {
    condition     = can(cidrnetmask(var.ssh_allowed_cidr)) && var.ssh_allowed_cidr != "0.0.0.0/0"
    error_message = "Set a valid restricted SSH CIDR, preferably your public IP/32."
  }
}
variable "key_pair_name" {
  description = "Existing EC2 key pair name in the selected region"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type; check availability and pricing"
  type        = string
  default     = "t3.micro"
}
