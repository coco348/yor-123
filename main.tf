terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-05d34d340fb1d89e5"
  instance_type = "t2.micro"


  tags = {
    git_commit           = "cd8ca729f30f19e4923ee9bca0c634217c0cf20e"
    git_file             = "main.tf"
    git_last_modified_at = "2022-01-06 14:27:05"
    git_last_modified_by = "yuanyue910919@gmail.com"
    git_modifiers        = "yuanyue910919"
    git_org              = "coco348"
    git_repo             = "yor-123"
    yor_trace            = "cdd0f6f1-5e38-4083-95d5-c2b4233a31b7"
  }
}
