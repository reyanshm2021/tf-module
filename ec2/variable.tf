variable "count_ec2_instance" {
  description = "number of ec2 instance"
  type        = number
  default     = 1
}

variable "name" {
  description = "Name of bastion"
  type        = string
  default     = ""
}
variable "public_ip" {
  description = "Public Ip "
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
variable "subnet" {
  description = "Zones to launch our instances into"
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "volume size"
  type        = number
  default     = 8 
}

variable "ami_id" {
  description = "Name of Launch configuration"
  type        = string
  default     = ""
}
variable "key_name" {
  description = "Key name of Launch configuration"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "Name of Launch configuration"
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "Name of Launch configuration"
  type        = list(string)
  default     = []
}

variable "iam_instance_profile" {
  type = string
  description = "IAM role to attach with ec2 instance"
  default = ""
}

variable "kms_key_id" {
  type = string
  description = "insert KMS key"
  default = ""
}

variable "volume_encryption" {
  type = bool
  description = "(Optional) Whether to enable volume encryption. Defaults to false."
  default = false
}

variable "volume_type" {
  type = string
  description = "(Optional) Type of volume. Valid values include standard, gp2, gp3, io1, io2, sc1, or st1. Defaults to gp2"
  default = "gp3"
}

variable "disable_api_termination" {
  type = bool
  default = true
}

variable "disable_api_stop" {
  type = bool
  default = true
}

variable "instance_tags" {
  description = "Map of tags to assign to the resources"
  type        = map(string)
  default = {
    Name        = "example-instance"
    Environment = "test"
    Owner       = "devops-team"
  }
}
