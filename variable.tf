variable "region" {
  description = "value for the region"
  type = string
  default = "us-east-1"
}

variable "ec2_default_root_volume_size" {
  description = "Default root volume size for EC2 instances in GB"
  type = number
  default = 10
  
}

variable "env" {
  description = "Environment type (e.g., dev, prod)"
  type = string
  default = "prod"
  
}