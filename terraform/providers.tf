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
    host                   = aws_eks_cluster.myapp-eks-cluster[0].endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.myapp-eks-cluster[0].certificate_authority[0].data)
  }
}

# provider "kubernetes" {
#   # config_path = pathexpand(var.kube_config)
# }
