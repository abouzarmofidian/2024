resource "kubernetes_role" "developer-role" {
  metadata {
    name      = "developer-role"
    namespace = "development"
  }

  rule {
    api_groups = [""]
    resources  = ["services", "persistentvolumeclaims", "pods"]
    verbs      = ["*"]
  }

}