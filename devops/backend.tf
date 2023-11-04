terraform {
    backend "s3" {
        bucket = "ravi199201"
        key = "devops/statefile"
        region = "ap-south-1"
    }
}