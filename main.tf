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
  ami           = "ami-099ccc441b2ef41ec"
  instance_type = "t2.micro"



  tags = {
    git_commit           = "23fdce074e1b8382360ec1b91dd2949576679145"
    git_file             = "main.tf"
    git_last_modified_at = "2022-01-06 16:59:33"
    git_last_modified_by = "y.b.yuan@accenture.com"
    git_modifiers        = "y.b.yuan/yuanyue910919"
    git_org              = "coco348"
    git_repo             = "yor-123"
    yor_trace            = "5509dc58-c70c-4079-81bc-266a0007baeb"
  }
}
