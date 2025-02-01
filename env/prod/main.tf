module "prod" {
  source   = "../../../infra"
  instance = "t2.micro"
  region   = "us-west-2"
  key      = "iac-prod"
}
