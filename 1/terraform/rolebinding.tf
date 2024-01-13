resource "kubernetes_role_binding" "developer-rolebinding" {
  metadata {
    name      = "developer-rolebinding"
    namespace = "development"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "Role"
    name      = "developer-role"
  }

  subject {
    kind      = "User"
    name      = "martin"
    api_group = "rbac.authorization.k8s.io"
  }
}