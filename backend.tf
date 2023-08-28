terraform {

  backend "s3" {
    bucket         = "terraform-ci-osahon"
    dynamodb_table = "jjtech-dynamodb"
    key            = "statefile.tfstate-assym"
    region         = "ca-central-1"
    encrypt        = true

  }
}
