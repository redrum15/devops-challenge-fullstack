terraform {
  backend "s3" {
    bucket               = "challenge-fullstack-state"
    key                  = "state"
    region               = "us-east-2"
    workspace_key_prefix = "env"
  }
}
