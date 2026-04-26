
# S3 Bucket
resource "aws_s3_bucket" "main" {
    bucket = "${var.project_name}-bucket-${random_id.suffix.hex}"

    tags = {
        Name = "${var.project_name}-bucket"
        Project = var.project_name
    }
}

# Random ID for unique bucket name
resource "random_id" "suffix" {
    byte_length = 4
}

# Block all public access
resource "aws_s3_bucket_public_access_block" "main" {
    bucket = aws_s3_bucket.main.id

    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

# Enable versioning 
resource "aws_s3_bucket_versioning" "main" {
    bucket = aws_s3_bucket.main.id

    versioning_configuration {
        status = "Enabled"
    }
}

