include {
  path = find_in_parent_folders()
}

terraform {
    source = "../module"
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  backend "local" {}
}
EOF
}