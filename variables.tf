variable "ami_ap_south" {
  type        = string
  description = "AMI ID for ap-south-1"
  default     = "ami-053b12d3152c0cc71"
}

variable "ami_us_east" {
  type        = string
  description = "AMI ID for us-east-1"
  default     = "ami-0e2c8caa4b6378d8c"
}

variable "region_ap_south" {
  type        = string
  description = "AWS region for ap-south-1"
  default     = "ap-south-1"
}

variable "region_us_east" {
  type        = string
  description = "AWS region for us-east-1"
  default     = "us-east-1"
}

