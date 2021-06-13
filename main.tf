provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "mqu-kafka" {
  source = "./mqu-kafka"
}

module "mqu-customers" {
  source = "./mqu-customers"
}