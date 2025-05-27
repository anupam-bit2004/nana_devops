provider "aws" {
  region = "us-east-2"
  access_key = "AKIAYQNJSXUEC77OTSNJ"
  secret_key = "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"
}

data "aws_vpc" "existing_vpc" {
  default = true 
}

resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "use-east-1a"
}
