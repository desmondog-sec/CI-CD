# Specify the provider and access details

provider "aws" {
  
}

# delete an S3 bucket
resource "aws_cloudformation_stack" "udatest" {
    name = "udatest"
    force_destroy = true  
}
# 
