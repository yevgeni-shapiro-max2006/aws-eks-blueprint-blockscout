
###  ---  Default Template  ---  ###
aws_region      = "eu-central-1" # \\\ eu-central-1
cluster_name    = "eks-cluster-blockscout"
cluster_version = "1.35"
instance_types  = ["t3.xlarge"]
node_group_desired_size = 3
node_group_min_size     = 3
node_group_max_size     = 7

blockscout_postgresql_password = "q1w2e3r4100@"
blockscout_network             = "Yevgeni Chain"
blockscout_rpc_url             = "https://rpc.appflex.io"
blockscout_hostname            = "dash-monitor.appflex.io"
