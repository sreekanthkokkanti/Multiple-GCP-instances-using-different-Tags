provider "google" {
credentials = file ("gcp-practice-392604-396eb7215400.json")  
  project     = "gcp-practice-392604"
  
}


module "vpc" {
  source     = "./modules/vpc"
  project_id = var.project_id
  region     = var.region
  vpc_cidr   = var.vpc_cidr
}

module "instances" {
  source         = "./modules/instance"
  project_id     = var.project_id
  vpc_network    = module.vpc.vpc_network_self_link
  vpc_subnetwork = module.vpc.vpc_subnetwork_self_link
  zone           = var.zone
  instance_names = ["sree", "raj"]  # List of custom instance names
  tags = {
    "sree" = ["dept=eng"]
    "raj"  = ["dept=admin"]
  }  # Map of tags for instances
}