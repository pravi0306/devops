terraform {
    backend "s3" {
        bucket = "ravi011992"
        key = "devops/statefile"
    }
}