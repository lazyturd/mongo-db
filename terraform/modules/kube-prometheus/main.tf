resource "helm_release" "kube-prometheus" {
  name       = "kube-prometheus-stackr"
  version    = var.kube-version
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
}