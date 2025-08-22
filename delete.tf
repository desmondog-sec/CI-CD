# delete_stack/main.tf
terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Represent the existing stack
resource "aws_cloudformation_stack" "target" {
  name = var.stack_name

  # We don't want TF to try to recreate or change it;
  # we're just importing so we can destroy.
  lifecycle {
    ignore_changes = all
  }
}

variable "stack_name" {
  type = string
}