variable "vpc_cidr" {
  description = "cidr block for vpc"
  type = string
}

variable "vpc_tag" {
    description = "vpc tags"
    type = string
    
  
}

variable "subnet_cidr" {
  description = "subnet cidr"
  type = list(string)
}

variable "create_subnet" {
    type = bool
    description = "determine if subnet should be provisioned"
    default = false
  
}

variable "subnet_az" {
    description = "availability zones"
    type = list(string)
    default = [ ]
  
}

variable "subnet_tag" {
    description = "subnet name"
    type = string
  
}