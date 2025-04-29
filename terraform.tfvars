aws_region  = "eu-central-1"
bucket_prefix = "my-dev-bucket-532033184881"
subnets= [
  {
    name = "public-subnet-1"
    cidr = "10.0.1.0/24"
    az   = "eu-central-1a"
    type = "public"
  },
  {
    name = "public-subnet-2"
    cidr = "10.0.3.0/24"
    az   = "eu-central-1b"
    type = "public"
  },
  {
    name = "private-subnet-1"
    cidr = "10.0.2.0/24"
    az   = "eu-central-1a"
    type = "private"
  },
  {
    name = "private-subnet-2"
    cidr = "10.0.4.0/24"
    az   = "eu-central-1b"
    type = "private"
  }
]
cidr="10.0.0.0/16"
db_name     = "mydatabase"
db_username = "admin"
db_password = "mysecretpassword"
state_bucket_id="mybucket-backend-532033184881"
