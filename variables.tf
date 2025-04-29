variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "bucket_prefix" {
  description = "The prefix for the S3 bucket name"
  type        = string
}

variable "subnets" {
  type = list(object({
    name = string
    cidr = string
    az   = string
    type = string
  }))
  default = [
    {
      name = ""
      cidr = ""
      az   = ""
      type = ""
    }
  ]
}
variable "cidr" {
    description = "CIDR range"
    type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the MySQL database"
  type        = string
}

variable "db_password" {
  description = "The password for the MySQL database"
  type        = string
  sensitive   = true
}

variable "state_bucket_id" {
  type = string
  default = ""
}