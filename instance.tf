resource "aws_instance" "application" {
  ami           = data.aws_ami.latest_ami.id
  instance_type = "t2.micro"
  subnet_id     = module.toka.subnets["public-subnet-1"].id
  vpc_security_group_ids = [module.toka.app_sg]
  associate_public_ip_address = false
  key_name = aws_key_pair.PubKey.key_name
  tags = {
    Name = "app"
    
  }
}

resource "aws_instance" "bastion" {
  ami           = data.aws_ami.latest_ami.id
  instance_type = "t2.micro"
  subnet_id     = module.toka.subnets["private-subnet-1"].id
  vpc_security_group_ids = [module.toka.ssh_sg]
  key_name = aws_key_pair.PubKey.key_name
  associate_public_ip_address = true
  tags = {
    Name = "Bastion"
  }
}
