provider "aws" {
   region     = "eu-central-1"
   access_key = "<INSERT_YOUR_ACCESS_KEY>"
   secret_key = "<INSERT_YOUR_SECRET_KEY>"
}

module "jhooq-webserver-1" {
  source = ".//module-1"
}

module "jhooq-webserver-2" {
  source = ".//module-2"
}
