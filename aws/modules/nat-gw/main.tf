resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat.id
    subnet_id     = var.public_subnet

  tags = {
    Name = "gw NAT"
  }
  depends_on = [var.gateway_id]
}