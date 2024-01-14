resource "kubernetes_service" "jekyll" {
  metadata {
    name      = "jekyll"
    namespace = "development"
  }

  spec {
    selector = {
      run = "jekyll"
    }
    type = "NodePort"
    port {
      port        = 8080
      target_port = 4000
      node_port   = 30097
    }
  }
}