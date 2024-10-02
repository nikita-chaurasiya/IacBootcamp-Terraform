terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region     = "ap-south-1"
}


# below code b is for direct run from vs to terraform cloud 
#terraform { 
#  cloud { 
#   
#    organization = "nikita-work" 
#
#    workspaces { 
#      name = "testwork1" 
#    } 
#  } 
#}

# code is used for new tag created for github and terraform cloud 
terraform {
  cloud {
    organization = "nikita-work"
    hostname = "app.terraform.io"
    workspaces {
      tags = ["nikita-ec2-all"]
      }
    }
} 