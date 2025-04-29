
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
}


resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.myvpc.id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   nat_gateway_id = aws_nat_gateway.natGateway.id
  # }
}


resource "aws_route_table_association" "public_route_association_1" {
  subnet_id      = aws_subnet.subnets["public-subnet-1"].id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_route_association_2" {
  subnet_id      = aws_subnet.subnets["public-subnet-2"].id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "private_route_association_1" {
  subnet_id      = aws_subnet.subnets["private-subnet-1"].id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_association_2" {
  subnet_id      = aws_subnet.subnets["private-subnet-2"].id
  route_table_id = aws_route_table.private_route_table.id
}
