module "env-dev" {
  source   = "../../../infra"
  instance = "t2.micro"
  region   = "us-west-2"
  key      = "iac-dev"
}

output "IP" {
  value = module.env-dev.public_ip
}
