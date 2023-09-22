terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

providers "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA5PND2T2MYVC5KSIY"
    secret_key = "T0pCYeSCfSpqWThsMb3w8YDmcpsKl3puIhHS+Vzr"
}

resource "aws_instance" "example" {
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.example.public_ip
}