variable "blockscout_postgresql_password" {
  type      = string
  sensitive = true
}

variable "blockscout_rpc_url" {
  type      = string
  sensitive = true
}

variable "blockscout_network" {
  type = string
}

variable "blockscout_subnetwork" {
  type    = string
  default = ""
}

variable "blockscout_hostname" {
  type = string
}
