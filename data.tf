# data sources

data "aws_vpc" "austin-vpc" {
  id = "vpc-07eede624774fec02"
  # above vpc id already exists in my aws account
}