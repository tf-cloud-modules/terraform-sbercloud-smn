provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}

module "smn" {
  source = "../../"

  name = "smn-test"

  subscriptions = {
    email = {
      endpoint = "mailtest@gmail.com"
      protocol = "email"
      remark   = "O&M"
    }
  }
}