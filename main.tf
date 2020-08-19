resource "mongodbatlas_network_container" "this" {
  project_id       = var.project_id
  atlas_cidr_block = var.cidr_block
  provider_name    = "AWS"
  region_name      = var.region
}

resource "mongodbatlas_network_peering" "this" {
  accepter_region_name   = var.target_region_name
  project_id             = var.project_id
  container_id           = mongodbatlas_network_container.this.id
  provider_name          = "AWS"
  route_table_cidr_block = var.target_cidr_block
  vpc_id                 = var.target_vpc_id
  aws_account_id         = var.target_account_id
}
