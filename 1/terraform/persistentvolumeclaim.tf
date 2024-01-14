resource "kubernetes_persistent_volume_claim" "jekyll-site" {
  metadata {
    name      = "jekyll-site"
    namespace = "development"
  }

  spec {
    access_modes = ["ReadWriteMany"]
    
    resources {
      requests = {
        storage = "1Gi"
      }
    }

    volume_name = "jekyll-site"
  }
}