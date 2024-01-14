resource "kubernetes_pod" "jekyll" {
  metadata {
    name      = "jekyll"
    namespace = "development"
    labels = {
      run = "jekyll"
    }
  }

  spec {
    init_container {
      name    = "copy-jekyll-site"
      image   = "kodekloud/jekyll"
      command = ["jekyll", "new", "/site"]
      volume_mount {
        mount_path = "/site"
        name       = "site"
      }

    }
    container {
      name  = "jekyll"
      image = "kodekloud/jekyll-serve"
      
      volume_mount {
        mount_path = "/site"
        name       = "site"
      }
    }

    volume {
        name = "site"
        persistent_volume_claim {
            claim_name = "jekyll-site"
        }
      }

  }

}