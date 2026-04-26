
output "ec2_public_ip" {
    description = "Public IP of the EC2 instance"
    value = aws_instance.main.public_ip
}

output "ec2_instance_id" {
    description = "ID of the EC2 instance"
    value = aws_instance.main.id
}

output "s3_bucket_name" {
    description = "Name of the S3 bucket"
    value = aws_s3_bucket.main.bucket
}

output "vpc_id" {
    description = "ID of the VPC"
    value = aws_vpc.main.id
}


