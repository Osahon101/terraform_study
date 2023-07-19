resource "aws_vpc" "canada" {
  cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_tag
    }
}

resource "aws_subnet" "main" {
  count             = var.create_subnet ? 1 : 0
  cidr_block        = var.create_subnet ? element(var.subnet_cidr, count.index) : 0
  availability_zone = var.create_subnet ? element(var.subnet_az, count.index) : 0
  vpc_id            = var.create_subnet ? aws_vpc.canada.id : 0
  tags = {
    Name = var.subnet_tag
  }
}