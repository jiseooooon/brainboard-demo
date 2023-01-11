resource "aws_vpc" "default_c" {
  tags       = merge(var.tags, {})
  cidr_block = var.vpc_cidr
}

resource "aws_flow_log" "default_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

