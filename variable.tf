variable "vpc-cidr" {
  description = "vpc required cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc-tags" {
  description = "vpc reference tag"
  type        = map(string)
  default = {
    "Name" = "group3-vpc"
    "Env"  = "Dev"
  }

}

variable "subnet_cidr" {
  description = "subnet cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "az" {
  description = "azs for subnet"
  type        = list(string)
  default     = ["ca-central-1a", "ca-central-1b"]
}

variable "sn-tags" {
  description = "subnet tags"
  type        = map(string)
  default = {
    "Name" = "group3-sn"
    "Env"  = "Dev"
  }
}

variable "sg-ports" {
  description = "ports to allow through traffic"
  type        = list(string)
  default     = ["80", "443", "22"]

}

variable "instance_type" {
  description = "instance type"
  type        = list(string)
  default     = ["t2.micro", "t2.nano"]

}

variable "instance_tags" {
  description = "tags for instance"
  type        = map(string)
  default = {
    "Name" = "group3-instance"
    "Env"  = "Dev"
  }

}