variable "cidr_all" {
  type        = string
  description = "Cidr for all ips"
  default     = "0.0.0.0/0"
}

variable "region" {
  type        = string
  description = "Region to be deployed to"
  default     = "us-east-1"
}

variable "db_user" {
  sensitive   = true
  description = "Database master username credentials"
  type        = string
  default     = "admin"

}

#########CONFIGURE VARIABLES##########################

variable "vpc_cidr" {
  type        = string
  description = "Cidr for vpc"
  default     = "10.233.0.0/16"
}

variable "project" {
  type        = string
  description = "The name of the project"
  default     = "panamax"
}

variable "db_instance_class" {
  type        = string
  description = "The instance class of the database in RDS"
  default     = "db.t3.micro"
}