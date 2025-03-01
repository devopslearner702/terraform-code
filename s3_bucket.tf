resource "aws_s3_bucket" "terraform_state" {
  bucket = var.terraform_state # Replace with a globally unique name
  
}

resource "aws_s3_bucket" "logs" {
  bucket = var.apache_logs_bucket  # Replace with a globally unique name
  
}

resource "aws_s3_bucket_acl" "terraform_state_acl" {
  bucket = aws_s3_bucket.terraform_state.id
  acl    = var.acl_name  # Apply ACL using the new resource

  # Optional: you can also specify the grantees and permissions if needed
  # grantee {
  #   type        = "CanonicalUser"
  #   id          = "some-canonical-user-id"
  #   permission  = "FULL_CONTROL"
  # }
}

resource "aws_s3_bucket_acl" "logs_acl" {
  bucket = aws_s3_bucket.logs.id
  acl    = var.acl_name  # Apply ACL using the new resource

  # Optional: you can also specify the grantees and permissions if needed
  # grantee {
  #   type        = "CanonicalUser"
  #   id          = "some-canonical-user-id"
  #   permission  = "FULL_CONTROL"
  # }
}


