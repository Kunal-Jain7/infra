terraform {
  backend "s3" {
    bucket       = "zen-pharma-terraform-state-kunal-jain-learn"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
    key          = "envs/dev/terraform.tfstate"
  }
}
