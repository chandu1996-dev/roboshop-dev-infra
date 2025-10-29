terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-born96-dev"
    key    = "roboshop-dev-backend-alb"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true


  }
}

provider "aws" {
  region = "us-east-1"
}


# provider "aws" {
#   # Configuration options
#   region = "ap-south-1"
# }