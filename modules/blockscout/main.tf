
resource "helm_release" "blockscout" {
  name       = "blockscout"
  repository = "https://blockscout.github.io/helm-charts"
  chart      = "blockscout-stack"
  version    = "9.1.0"

  namespace        = "blockscout"
  create_namespace = true

  wait            = true
  wait_for_jobs   = true
  timeout         = 1200
  atomic          = true
  cleanup_on_fail = true

  values = [
    yamlencode({
      postgresql = {
        enabled = true

        auth = {
          username = "blockscout"
          password = var.blockscout_postgresql_password
          database = "blockscout"
        }

        primary = {
          persistence = {
            enabled = true
            size    = "10Gi"
          }
        }
      }

      redis = {
        enabled = true

        architecture = "standalone"

        master = {
          persistence = {
            enabled = true
            size    = "10Gi"
          }
        }
      }

      blockscout = {
        env = {
          ETHEREUM_JSONRPC_VARIANT  = "geth"
          ETHEREUM_JSONRPC_HTTP_URL = var.blockscout_rpc_url

          NETWORK     = var.blockscout_network
          SUBNETWORK  = var.blockscout_subnetwork
        }
      }

      frontend = {
        ingress = {
          enabled  = true
          hostname = var.blockscout_hostname
        }
      }
    })
  ]
}
