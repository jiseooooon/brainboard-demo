resource "aws_route_table" "rt_private_a_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

resource "aws_route_table" "rt_private_b_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

resource "aws_route_table" "rt_private_c_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

resource "aws_subnet" "private_a_c" {
  vpc_id                  = aws_vpc.default_c.id
  tags                    = merge(var.tags, {})
  map_public_ip_on_launch = false
  cidr_block              = var.private_subnets.a
  availability_zone       = "us-east-2a"
}

resource "aws_subnet" "private_b_c" {
  vpc_id                  = aws_vpc.default_c.id
  tags                    = merge(var.tags, {})
  map_public_ip_on_launch = false
  cidr_block              = var.private_subnets.b
  availability_zone       = "us-east-2b"
}

resource "aws_subnet" "private_c_c" {
  vpc_id                  = aws_vpc.default_c.id
  tags                    = merge(var.tags, {})
  map_public_ip_on_launch = false
  cidr_block              = var.private_subnets.c
  availability_zone       = "us-east-2c"
}

