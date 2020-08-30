terraform {
  backend "s3" {
    bucket         = "github-andreassko-infrastructure-tf-backend"
    key            = "terraform.tfstate"
    dynamodb_table = "github-andreassko-infrastructure-tf-backend"
    region         = "eu-central-1"
  }
}
