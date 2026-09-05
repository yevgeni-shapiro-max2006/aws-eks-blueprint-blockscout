
###  ---  Application  ---  ###
module "httpd" {
  source = "./modules/httpd"
  depends_on = [kubernetes_namespace.migration]

  name   = "httpd-server"
  namespace = "default"
  replicas  = 1
  image = "virtapp/apache:7f6c4bf4-3-6"
  service_port = 8080
  service_type = "ClusterIP"
}

module "kong" {
  source = "./modules/kong"
  depends_on = [module.httpd]
}

module "keda" {
  source = "./modules/keda"
  depends_on = [module.kong]
}

module "minio" {
  source = "./modules/minio"
  depends_on = [module.keda]
}

module "prometheus" {
  source = "./modules/prometheus"
  depends_on = [module.minio]
}

module "grafana" {
  source = "./modules/grafana"
  depends_on = [module.prometheus]
}

module "ingress" {
  source = "./modules/ingress"
  depends_on = [module.grafana]
}

module "blockscout" {
  source = "./modules/blockscout"
  depends_on = [module.ingress]

  blockscout_postgresql_password = var.blockscout_postgresql_password
  blockscout_rpc_url              = var.blockscout_rpc_url
  blockscout_network              = var.blockscout_network
  blockscout_hostname             = var.blockscout_hostname
}


