resource "aws_route_table" "private_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    "iac"       = "terraform"
    "component" = "route-table"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  subnet_id      = var.private_subnet
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }
}

resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = var.public_subnet
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_main_route_table_association" "main_rt" {
  vpc_id         = var.vpc_id
  route_table_id = aws_route_table.public_rt.id
}

