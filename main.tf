module "toka" {
  source="./network"
  subnets=var.subnets
  cidr=var.cidr
}
 