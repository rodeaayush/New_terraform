provider "aws" {
  region = var.region
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = "ami-07d9b9ddc6cd8dd30"  # Replace with your AMI ID

  
  tags = {
        Envoirnment = "HelloWorld"
        Project = "ABC Project"
        Owner = "Aayush"
    }
}

terraform {
  backend "s3" {
    bucket = "terraformtadf234"
    key    = "terraform/state"
    region = "us-east-1"
    dynamodb_table  = "terraformdemo234ddf"
  }
}
