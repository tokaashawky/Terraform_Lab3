terraform {
  backend "s3" {
    bucket = "mybucket-backend-532033184881"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    use_lockfile = true
  }
}