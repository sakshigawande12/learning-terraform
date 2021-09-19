output "route_tables" {
  value = [aws_route_table.private_rt.id, aws_route_table.public_rt.id]
}