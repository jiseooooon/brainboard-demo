resource "aws_internet_gateway" "default_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

resource "aws_subnet" "public_a_c" {
  vpc_id            = aws_vpc.default_c.id
  tags              = merge(var.tags, {})
  cidr_block        = var.subnets.a
  availability_zone = "us-east-2a"
}

resource "aws_subnet" "public_b_c" {
  vpc_id            = aws_vpc.default_c.id
  tags              = merge(var.tags, {})
  cidr_block        = var.subnets.b
  availability_zone = "us-east-2b"
}

resource "aws_subnet" "public_c_c" {
  vpc_id            = aws_vpc.default_c.id
  tags              = merge(var.tags, {})
  cidr_block        = var.subnets.c
  availability_zone = "us-east-2c"
}

resource "aws_eip" "eip_a_c" {
  tags = merge(var.tags, {})
}

resource "aws_eip" "eip_c_c" {
  tags = merge(var.tags, {})
}

resource "aws_eip" "eip_b_c" {
  tags = merge(var.tags, {})
}

resource "aws_nat_gateway" "nat-gw-2b-public_c" {
  tags      = merge(var.tags, {})
  subnet_id = aws_subnet.public_b_c.id
}

resource "aws_nat_gateway" "nat-gw-2a-public_c" {
  tags      = merge(var.tags, {})
  subnet_id = aws_subnet.public_a_c.id
}

resource "aws_nat_gateway" "nat-gw-2c-public_c" {
  tags      = merge(var.tags, {})
  subnet_id = aws_subnet.public_c_c.id
}

resource "aws_route_table" "rt_public_a_c" {
  vpc_id = aws_vpc.default_c.id
}

resource "aws_route_table" "rt_public_c_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

resource "aws_route_table" "rt_public_b_c" {
  vpc_id = aws_vpc.default_c.id
  tags   = merge(var.tags, {})
}

