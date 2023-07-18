variable "project_id" {
  description = "gcp-practice-392604"
}

variable "region" {
  description = "GCP region where resources will be created"
  default     = "us-west4"
}

variable "zone" {
  description = "GCP zone where instances will be created"
  default     = "us-west4-a"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC network"
  default     = "10.0.0.0/16"
}

variable "instance_count" {
  description = "Number of instances to create"
  default     = 2  # Adjust the default value as needed
}