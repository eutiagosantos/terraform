module "prod" {
  source   = "/home/tiago/terraform/terraform-curso/infra"
  instance = "t2.micro"
  region   = "us-west-2"
  key      = "iac-prod"
}


output "IP" {
  value = module.prod.public_ip
}
