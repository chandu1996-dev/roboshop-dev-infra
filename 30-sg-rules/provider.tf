terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-born96-dev"
    key    = "roboshop-dev-sg-rules"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true


  }
}

provider "aws" {
  # Configuration options
}

# provider "aws" {
#   # Configuration options
#   region = "ap-south-1"
# }