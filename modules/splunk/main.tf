resource "helm_release" "splunk_operator" {
  name             = "splunk-operator"
  namespace        = "splunk-operator"
  create_namespace = true

  repository = "https://splunk.github.io/splunk-operator/"
  chart      = "splunk-operator"

  # Optional: pin a specific version
  version    = "3.1.0"

  wait    = true
  timeout = 600
}
