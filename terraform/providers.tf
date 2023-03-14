terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "${var.region}"
}

provider "helm" {
  kubernetes {
    # config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  # config_path = pathexpand(var.kube_config)
}
