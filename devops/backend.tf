terraform {
    backend "s3" {
        bucket = "ravi011992"
        key = "devops/statefile"
        region = "ap-south-1"
    }
}